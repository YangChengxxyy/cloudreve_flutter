import 'package:cloudreve/app/LoadingHome.dart';
import 'package:cloudreve/app/LoginHome.dart';
import 'package:cloudreve/app/MainHome.dart';
import 'package:cloudreve/app/RegisterHome.dart';
import 'package:cloudreve/state/app_state.dart';
import 'package:cloudreve/utils/DarkModeProvider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final DarkModeProvider _darkModeProvider;
  late final AppState _appState;
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();
    _darkModeProvider = DarkModeProvider();
    _appState = AppState();
    _appState.initialize();
    _router = _createRouter();
  }

  GoRouter _createRouter() {
    return GoRouter(
      initialLocation: '/splash',
      refreshListenable: _appState,
      routes: [
        GoRoute(
          path: '/splash',
          builder: (context, state) => LoadingHome(),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => LoginHome(),
        ),
        GoRoute(
          path: '/register',
          builder: (context, state) => RegisterHome(),
        ),
        GoRoute(
          path: '/home',
          redirect: (context, state) => '/home/files',
        ),
        GoRoute(
          path: '/home/:tab',
          builder: (context, state) {
            final tabParam = state.pathParameters['tab'] ?? 'files';
            final initialTab = tabParam == 'settings'
                ? MainTab.settings
                : MainTab.files;
            return MainHome(initialTab: initialTab);
          },
        ),
      ],
      redirect: (context, state) {
        final initializing = !_appState.isInitialized;
        final location = state.matchedLocation;
        if (initializing) {
          return location == '/splash' ? null : '/splash';
        }

        final loggedIn = _appState.isLoggedIn;
        final goingToLogin = location == '/login';
        final goingToRegister = location == '/register';
        final goingHome = location.startsWith('/home');

        if (!loggedIn) {
          if (goingToLogin || goingToRegister) {
            return null;
          }
          return '/login';
        }

        if (goingToLogin || goingToRegister || location == '/splash') {
          return '/home/files';
        }

        if (location == '/home') {
          return '/home/files';
        }

        if (!goingHome) {
          return '/home/files';
        }

        return null;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _darkModeProvider),
        ChangeNotifierProvider.value(value: _appState),
      ],
      child: Consumer<DarkModeProvider>(
        builder: (context, darkModeProvider, _) {
          final darkMode = darkModeProvider.darkMode;
          final lightTheme = ThemeData(
            primarySwatch: Colors.blue,
          );
          final darkTheme = ThemeData.dark();
          ThemeMode themeMode;
          switch (darkMode) {
            case DarkMode.auto:
              themeMode = ThemeMode.system;
              break;
            case DarkMode.open:
              themeMode = ThemeMode.dark;
              break;
            case DarkMode.close:
              themeMode = ThemeMode.light;
              break;
          }
          return MaterialApp.router(
            title: 'Cloudreve',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: themeMode,
            routerConfig: _router,
          );
        },
      ),
    );
  }
}
