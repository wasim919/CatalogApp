import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

import 'package:new_apps/pages/home_page.dart';
import 'package:new_apps/pages/login_page.dart';
import 'package:new_apps/utils/routes.dart';

void main() {
  runApp(
    MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
        ),
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => const LoginPage(),
          MyRoutes.homeRoute: (context) => const HomePage(),
          MyRoutes.loginRoute: (context) => const LoginPage()
        }),
  );
}
