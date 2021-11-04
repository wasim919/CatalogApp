import "package:flutter/material.dart";
import 'package:new_apps/pages/home_page.dart';
import 'package:new_apps/pages/login_page.dart';

void main() {
  runApp(
    MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        darkTheme: ThemeData(brightness: Brightness.dark),
        routes: {
          "/": (context) => const LoginPage(),
          "/home": (context) => const HomePage(),
          "/login": (context) => const LoginPage()
        }),
  );
}
