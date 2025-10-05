import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/utils/cloudreve_repository.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart'
    as cloudreve_api;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShareDialog extends StatefulWidget {
  const ShareDialog({
    super.key,
    required this.fatherContext,
    required this.parentContext,
    required this.file,
  });

  final BuildContext fatherContext;
  final BuildContext parentContext;
  final MFile file;

  @override
  State<ShareDialog> createState() => _ShareDialogState();
}

class _ShareDialogState extends State<ShareDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _customExpireController = TextEditingController();

  bool _isPrivate = false;
  bool _useCustomPassword = false;
  bool _shareView = false;
  bool _showReadme = false;

  bool _expireEnabled = false;
  int _selectedExpireSeconds = _expireOptions.first.seconds;

  late PermissionPreset _anonymousPreset;
  late PermissionPreset _everyonePreset;

  bool get _isDirectory => widget.file.type == 'dir';

  @override
  void initState() {
    super.initState();
    _anonymousPreset = _permissionPresets.first;
    _everyonePreset = _permissionPresets.first;
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _customExpireController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('创建分享链接'),
      content: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildPrivateSection(),
                if (_isDirectory) _buildDirectorySection(),
                _buildExpireSection(),
                _buildPermissionSection(),
              ],
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('取消'),
        ),
        FilledButton(
          onPressed: _handleSubmit,
          child: const Text('确定'),
        ),
      ],
    );
  }

  Widget _buildPrivateSection() {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Column(
          children: [
            SwitchListTile.adaptive(
              title: const Text('使用密码保护'),
              subtitle: const Text('启用后，分享链接将隐藏并需要密码访问。'),
              value: _isPrivate,
              onChanged: (value) {
                setState(() {
                  _isPrivate = value;
                  if (!value) {
                    _useCustomPassword = false;
                    _passwordController.clear();
                  }
                });
              },
            ),
            if (_isPrivate)
              Column(
                children: [
                  CheckboxListTile(
                    title: const Text('自定义密码'),
                    value: _useCustomPassword,
                    onChanged: (value) {
                      setState(() {
                        _useCustomPassword = value ?? false;
                        if (!_useCustomPassword) {
                          _passwordController.clear();
                        }
                      });
                    },
                  ),
                  if (_useCustomPassword)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          labelText: '分享密码 (仅限字母与数字)',
                          border: OutlineInputBorder(),
                        ),
                        obscureText: true,
                        maxLength: 32,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'[a-zA-Z0-9]')),
                        ],
                        validator: (value) {
                          if (!_useCustomPassword) {
                            return null;
                          }
                          if (value == null || value.trim().isEmpty) {
                            return '请输入分享密码';
                          }
                          return null;
                        },
                      ),
                    ),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildDirectorySection() {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          SwitchListTile.adaptive(
            title: const Text('同步文件视图设置'),
            subtitle: const Text('访客将看到与您相同的排序及布局。'),
            value: _shareView,
            onChanged: (value) {
              setState(() {
                _shareView = value;
              });
            },
          ),
          SwitchListTile.adaptive(
            title: const Text('展示 README 文件'),
            subtitle: const Text('当存在 README 文件时自动展示内容。'),
            value: _showReadme,
            onChanged: (value) {
              setState(() {
                _showReadme = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildExpireSection() {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SwitchListTile.adaptive(
            title: const Text('自动过期'),
            subtitle: const Text('启用后，链接将在指定时间后失效。'),
            value: _expireEnabled,
            onChanged: (value) {
              setState(() {
                _expireEnabled = value;
                if (!value) {
                  _customExpireController.clear();
                }
              });
            },
          ),
          if (_expireEnabled)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: _expireOptions
                        .map(
                          (option) => ChoiceChip(
                            label: Text(option.label),
                            selected: _selectedExpireSeconds == option.seconds,
                            onSelected: (selected) {
                              if (!selected) return;
                              setState(() {
                                _selectedExpireSeconds = option.seconds;
                                _customExpireController.clear();
                              });
                            },
                          ),
                        )
                        .toList(),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _customExpireController,
                    decoration: const InputDecoration(
                      labelText: '自定义分钟数',
                      hintText: '输入正整数，例如 90',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (value) {
                      if (value.isEmpty) {
                        return;
                      }
                      final parsed = int.tryParse(value);
                      if (parsed == null || parsed <= 0) {
                        return;
                      }
                      setState(() {
                        _selectedExpireSeconds = parsed * 60;
                      });
                    },
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildPermissionSection() {
    return Card(
      child: ExpansionTile(
        title: const Text('访问权限'),
        subtitle: const Text('调整匿名访客与登录用户的可用功能'),
        childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        children: [
          _buildPermissionDropdown(
            title: '匿名访客',
            value: _anonymousPreset,
            onChanged: (preset) {
              setState(() {
                _anonymousPreset = preset;
              });
            },
          ),
          const SizedBox(height: 12),
          _buildPermissionDropdown(
            title: '登录用户',
            value: _everyonePreset,
            onChanged: (preset) {
              setState(() {
                _everyonePreset = preset;
              });
            },
          ),
          const SizedBox(height: 8),
          const Text(
            '权限值使用 boolset 编码，默认配置允许匿名访问并提供预览+下载能力。',
            style: TextStyle(fontSize: 12, color: Colors.black54),
          ),
        ],
      ),
    );
  }

  Widget _buildPermissionDropdown({
    required String title,
    required PermissionPreset value,
    required ValueChanged<PermissionPreset> onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 6),
          child: Text(title, style: Theme.of(context).textTheme.bodyMedium),
        ),
        InputDecorator(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<PermissionPreset>(
              value: value,
              isExpanded: true,
              items: _permissionPresets
                  .map(
                    (preset) => DropdownMenuItem<PermissionPreset>(
                      value: preset,
                      child: Text(preset.label),
                    ),
                  )
                  .toList(),
              onChanged: (preset) {
                if (preset != null) {
                  onChanged(preset);
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _handleSubmit() async {
    if (_useCustomPassword && !_formKey.currentState!.validate()) {
      return;
    }

    final password = (_isPrivate && _useCustomPassword)
        ? _passwordController.text.trim()
        : null;
    final expireSeconds = _expireEnabled ? _selectedExpireSeconds : null;

    final permissions = cloudreve_api.PermissionSetting((b) {
      b
        ..anonymous = _resolvePermissionValue(
          _anonymousPreset,
          _defaultAnonymousPermission,
        )
        ..everyone = _resolvePermissionValue(
          _everyonePreset,
          _defaultEveryonePermission,
        )
        ..sameGroup = _resolvePermissionValue(
          _everyonePreset,
          _defaultEveryonePermission,
        )
        ..other = _resolvePermissionValue(
          _everyonePreset,
          _defaultEveryonePermission,
        );
    });

    final uri = widget.file.path.isNotEmpty
        ? widget.file.path
        : 'cloudreve://my/${Uri.encodeComponent(widget.file.name)}';

    final response = await CloudreveRepository.createShare(
      uri: uri,
      permissions: permissions,
      isPrivate: _isPrivate,
      password: password?.isEmpty ?? true ? null : password,
      shareView: _isDirectory ? _shareView : null,
      showReadme: _isDirectory ? _showReadme : null,
      expire: expireSeconds,
    );

    if (!mounted) {
      return;
    }

    if (response != null && response.code == 0) {
      Navigator.pop(widget.fatherContext);
      Navigator.pop(widget.parentContext);
      final link = response.data ?? '';
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('分享成功')),
      );
      if (link.isNotEmpty) {
        showDialog(
          context: context,
          builder: (BuildContext lastContext) {
            return AlertDialog(
              title: const Text('分享成功'),
              content: SelectableText(link, autofocus: true),
              actions: [
                TextButton(
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: link));
                    Navigator.pop(lastContext);
                    ScaffoldMessenger.of(lastContext).showSnackBar(
                      const SnackBar(content: Text('复制成功')),
                    );
                  },
                  child: const Text('复制'),
                ),
              ],
            );
          },
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(response?.msg ?? '分享失败')),
      );
    }
  }

  String _resolvePermissionValue(
    PermissionPreset preset,
    String fallback,
  ) {
    return preset.value ?? fallback;
  }
}

class _ExpireOption {
  const _ExpireOption(this.seconds, this.label);
  final int seconds;
  final String label;
}

class PermissionPreset {
  const PermissionPreset(this.label, this.value);

  final String label;
  final String? value;
}

const _expireOptions = <_ExpireOption>[
  _ExpireOption(5 * 60, '5 分钟'),
  _ExpireOption(60 * 60, '1 小时'),
  _ExpireOption(24 * 60 * 60, '1 天'),
  _ExpireOption(7 * 24 * 60 * 60, '7 天'),
  _ExpireOption(30 * 24 * 60 * 60, '30 天'),
];

const _permissionPresets = <PermissionPreset>[
  PermissionPreset('遵循默认', null),
  PermissionPreset('禁止访问', 'AA=='),
  PermissionPreset('仅允许预览', 'AQ=='),
  PermissionPreset('允许预览并下载', 'BQ=='),
];

const _defaultAnonymousPermission = 'BQ==';
const _defaultEveryonePermission = 'AQ==';
