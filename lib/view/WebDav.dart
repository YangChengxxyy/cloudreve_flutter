import 'package:cloudreve/utils/cloudreve_repository.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart'
    as cloudreve_api;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WebDav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebDav"),
      ),
      body: Container(
        child: FutureBuilder(
          future: CloudreveRepository.fetchWebDavAccounts(),
          builder: (BuildContext context,
              AsyncSnapshot<List<cloudreve_api.DavAccount>> snapshot) {
            if (snapshot.hasData) {
              final list = snapshot.data!;
              var dataRows = <DataRow>[];
              for (var value in list) {
                final name = value.name ?? '';
                final password = value.password ?? '';
                final displayPassword = password.length > 10
                    ? '${password.substring(0, 10)}...'
                    : password;
                final uri = value.uri ?? '';
                final createdAt = value.createdAt;
                final createdAtText = createdAt != null
                    ? createdAt.toIso8601String().substring(0, 10)
                    : '';
                var dataRow = DataRow(
                  cells: [
                    DataCell(Text(name)),
                    DataCell(
                      Row(
                        children: [
                          Text(displayPassword),
                          TextButton(
                            onPressed: () {
                              Clipboard.setData(
                                  ClipboardData(text: password));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("复制成功"),
                                ),
                              );
                            },
                            child: Text("复制"),
                          )
                        ],
                      ),
                    ),
                    DataCell(
                      Text(uri),
                    ),
                    DataCell(
                      Text(
                        createdAtText,
                      ),
                    ),
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
                        DataColumn(
                          label: Text("备注名"),
                        ),
                        DataColumn(
                          label: Text("密码"),
                        ),
                        DataColumn(
                          label: Text("根目录"),
                        ),
                        DataColumn(
                          label: Text("创建时间"),
                        ),
                        // DataColumn(label: Text("操作"),),
                      ], rows: dataRows),
                    ),
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
