import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/utils/cloudreve_repository.dart';
import 'package:flutter/material.dart';

class RenameFileDialog extends StatefulWidget {
  final MFile file;
  final BuildContext fatherContext;
  final void Function() refresh;
  RenameFileDialog(this.file, this.fatherContext, this.refresh, {Key? key})
      : super(key: key);

  @override
  _RenameFileDialogState createState() => _RenameFileDialogState();
}

class _RenameFileDialogState extends State<RenameFileDialog> {
  @override
  Widget build(BuildContext context) {
    final _newFileController =
        TextEditingController(text: widget.file.name);
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return AlertDialog(
      title: const Text("重命名"),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "输入${widget.file.name}的新名称",
            style: TextStyle(color: Colors.grey[700]),
          ),
          Form(
            key: _formKey,
              child: TextFormField(
                controller: _newFileController,
                decoration: InputDecoration(
                  label: Text("新名称"),
                ),
              keyboardType: TextInputType.text,
              validator: (v) {
                if (v == null) {
                  return null;
                }
                return v.trim().length > 0 ? null : "新名称不能为空";
              },
            ),
          ),
        ],
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
              final uri = widget.file.path;
              final success = uri.isNotEmpty &&
                  await CloudreveRepository.renameEntry(
                    fileUri: uri,
                    newName: _newFileController.text.trim(),
                  );
              if (success) {
                Navigator.pop(context);
                Navigator.pop(widget.fatherContext);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("重命名成功"),
                  ),
                );
                widget.refresh();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("重命名失败"),
                  ),
                );
              }
            }
          },
          child: Text("确定"),
        ),
      ],
    );
  }
}
