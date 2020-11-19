import 'package:flutter/material.dart';
import 'package:tugas_app/helpers/Routing.dart';
import 'package:tugas_app/temp/ItemDetail.dart';

class AppItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Items'),
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (context, int i) {
          return Card(
            child: ListTile(
              leading: FlutterLogo(size: 24.0),
              title: Text('Item ${i + 1}'),
              onTap: () {
                Routing.to(context, AppItemDetail(itemid: i + 1));
              },
            ),
          );
        },
      ),
    );
  }
}