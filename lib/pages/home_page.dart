import "package:flutter/material.dart";
import 'package:new_apps/models/catalog.dart';
import 'package:new_apps/widgets/drawer.dart';
import 'package:new_apps/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var items = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Catalog App"),
        ),
        drawer: const MyDrawer(),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: items[index]);
          },
        ));
  }
}
