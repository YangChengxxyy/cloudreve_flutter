import 'dart:io';

import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/utils/GlobalSetting.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:cloudreve/utils/cloudreve_repository.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppState extends ChangeNotifier {
  bool _isInitialized = false;
  bool _isLoggedIn = false;
  UserData? _userData;
  Storage? _storage;
  Future<void>? _initializing;

  bool get isInitialized => _isInitialized;
  bool get isLoggedIn => _isLoggedIn;
  UserData? get userData => _userData;
  Storage? get storage => _storage;

  Future<void> initialize() {
    _initializing ??= _doInitialize();
    return _initializing!;
  }

  Future<void> _doInitialize() async {
    try {
      HttpUtil.dio.interceptors.add(CookieManager(HttpUtil.cookieJar));
    } catch (_) {
      // ignore duplicate additions
    }

    await _ensurePermissions();
    await _prepareCacheDirectories();

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool remembered = prefs.getBool(isRememberKey) ?? false;
    final bool wasLoggedIn = prefs.getBool(isLoginKey) ?? false;

    if (wasLoggedIn && remembered) {
      await _attemptAutoLogin(prefs);
    } else {
      _isLoggedIn = false;
    }

    _isInitialized = true;
    notifyListeners();
  }

  Future<void> _ensurePermissions() async {
    final notificationStatus = await Permission.notification.status;
    if (!notificationStatus.isGranted) {
      await Permission.notification.request();
    }
    final storageStatus = await Permission.storage.status;
    if (!storageStatus.isGranted) {
      await Permission.storage.request();
    }
  }

  Future<void> _prepareCacheDirectories() async {
    final Directory temp = await getTemporaryDirectory();
    final Directory imageTemp = Directory('${temp.path}$cacheImagePath');
    final Directory thumbTemp = Directory('${temp.path}$cacheThumbPath');
    final Directory avatarTemp = Directory('${temp.path}$cacheAvatarPath');
    if (!imageTemp.existsSync()) {
      imageTemp.createSync(recursive: true);
    }
    if (!thumbTemp.existsSync()) {
      thumbTemp.createSync(recursive: true);
    }
    if (!avatarTemp.existsSync()) {
      avatarTemp.createSync(recursive: true);
    }
  }

  Future<void> _attemptAutoLogin(SharedPreferences prefs) async {
    final String? username = prefs.getString(usernameKey);
    final String? password = prefs.getString(passwordKey);

    if (username == null || password == null) {
      _isLoggedIn = false;
      return;
    }

    final List<String>? urls = prefs.getStringList(urlsKey);
    final int? index = prefs.getInt(selectedIndexKey);

    if (urls != null && index != null && index != 0) {
      HttpUtil.dio.options.baseUrl = urls[index - 1];
    }

    final LoginResult loginResult = await CloudreveRepository.signIn(
      email: username,
      password: password,
    );
    final Storage storage =
        await CloudreveRepository.fetchStorage() ?? Storage(0, 0, 0);

    if (loginResult.isSuccess && loginResult.data != null) {
      _userData = loginResult.data!.user;
      _storage = storage;
      _isLoggedIn = true;
    } else {
      await prefs.clear();
      _isLoggedIn = false;
    }
  }

  void updateSession({required UserData userData, required Storage storage}) {
    _userData = userData;
    _storage = storage;
    _isLoggedIn = true;
    if (!_isInitialized) {
      _isInitialized = true;
    }
    notifyListeners();
  }

  Future<void> refreshSession() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? username = prefs.getString(usernameKey);
    final String? password = prefs.getString(passwordKey);

    if (username == null || password == null) {
      return;
    }

    final LoginResult loginResult = await CloudreveRepository.signIn(
      email: username,
      password: password,
    );
    final Storage storage =
        await CloudreveRepository.fetchStorage() ?? _storage ?? Storage(0, 0, 0);

    if (loginResult.isSuccess && loginResult.data != null) {
      _userData = loginResult.data!.user;
      _storage = storage;
      _isLoggedIn = true;
      notifyListeners();
    }
  }

  Future<void> logout() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(isLoginKey, false);
    await prefs.remove(usernameKey);
    await prefs.remove(passwordKey);
    _userData = null;
    _storage = null;
    _isLoggedIn = false;
    notifyListeners();
  }
}
