import 'package:cloudreve/utils/Service.dart';
import 'package:flutter/material.dart';

class RenameNickDialog extends StatefulWidget {
  String nick;
  void Function(bool) refresh;
  RenameNickDialog({
    Key? key,
    required this.nick,
    required this.refresh,
  }) : super(key: key);

  @override
  _RenameNickDialogState createState() => _RenameNickDialogState();
}

class _RenameNickDialogState extends State<RenameNickDialog> {
  @override
  Widget build(BuildContext context) {
    final _newNickController = new TextEditingController(text: widget.nick);
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return AlertDialog(
      title: const Text("修改昵称"),
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _newNickController,
          decoration: InputDecoration(
            label: Text("昵称"),
          ),
          keyboardType: TextInputType.text,
          validator: (v) {
            if (v == null) {
              return null;
            }
            return v.trim().length > 0 ? null : "昵称不能为空";
          },
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("取消"),
        ),
        TextButton(
          onPressed: () async {
            if (_formKey.currentState!.validate()) {
              await renameNick(_newNickController.text);
              widget.refresh(true);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("修改成功"),
                ),
              );
            }
          },
          child: Text("确定"),
        ),
      ],
    );
  }
}
