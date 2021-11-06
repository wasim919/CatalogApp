import "package:flutter/material.dart";
import 'package:new_apps/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text("Ola!"),
      ),
    );
  }
}
