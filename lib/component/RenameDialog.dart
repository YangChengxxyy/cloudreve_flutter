import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RenameDialog extends StatefulWidget {
  MFile file;
  BuildContext fatherContext;
  void Function() refresh;
  RenameDialog(this.file, this.fatherContext, this.refresh, {Key? key})
      : super(key: key);

  @override
  _RenameDialogState createState() => _RenameDialogState();
}

class _RenameDialogState extends State<RenameDialog> {
  @override
  Widget build(BuildContext context) {
    final _newNameController =
        new TextEditingController(text: widget.file.name);
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
              controller: _newNameController,
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
            var items = <String>[];
            var dirs = <String>[];
            if (widget.file.type == "dir") {
              dirs.add(widget.file.id);
            } else {
              items.add(widget.file.id);
            }
            await renameObjects(_newNameController.text, dirs, items);
            Navigator.pop(context);
            Navigator.pop(widget.fatherContext);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("重命名成功"),
              ),
            );
            widget.refresh();
          },
          child: Text("确定"),
        ),
      ],
    );
  }
}
