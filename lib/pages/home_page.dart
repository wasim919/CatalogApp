import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:new_apps/models/catalog.dart';
import 'package:new_apps/widgets/drawer.dart';
import 'package:new_apps/widgets/item_widget.dart';
import "dart:convert";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final catalogMap = await jsonDecode(catalogJson);
    var productsData = catalogMap["products"];
    CatalogModel.items =
        List.from(productsData).map((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // var items = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      drawer: const MyDrawer(),
      body: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
          ? ListView.builder(
              itemCount: CatalogModel.items!.length,
              itemBuilder: (context, index) {
                return ItemWidget(item: CatalogModel.items![index]);
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
