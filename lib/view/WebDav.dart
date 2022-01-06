import 'package:cloudreve/entity/Accounts.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WebDav extends StatelessWidget {
  Future<Response> _getWebDavAccounts() {
    return Service.webdav();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebDav"),
      ),
      body: Container(
        child: FutureBuilder(
          future: _getWebDavAccounts(),
          builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
            if (snapshot.hasData) {
              Accounts accounts = Accounts.fromJson(
                  snapshot.data!.data['data'] as Map<String, dynamic>);
              var list = accounts.accounts;
              var dataRows = <DataRow>[];
              for (var value in list) {
                var dataRow = DataRow(
                  cells: [
                    DataCell(Text(value.name)),
                    DataCell(
                      Row(children: [
                        Text(value.password.substring(0, 10) + "..."),
                        TextButton(
                          onPressed: () {
                            Clipboard.setData(
                                ClipboardData(text: value.password));
                          },
                          child: Text("复制"),
                        )
                      ]),
                    ),
                    DataCell(Text(value.root)),
                    DataCell(Text(value.createdAt.substring(0, 10))),
                    // DataCell(
                    //   Icon(
                    //     Icons.delete,
                    //     color: Colors.black45,
                    //   ),
                    // ),
                  ],
                );
                dataRows.add(dataRow);
              }
              return Card(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(columns: [
                        DataColumn(label: Text("备注名")),
                        DataColumn(label: Text("密码")),
                        DataColumn(label: Text("根目录")),
                        DataColumn(label: Text("创建时间")),
                        // DataColumn(label: Text("操作")),
                      ], rows: dataRows),
                    ),
                  ],
                ),
              );
            } else {
              return Text("loading...");
            }
          },
        ),
      ),
    );
  }
}
