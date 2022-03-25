import 'package:buscador_gifs/ui/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(
        hintColor: Colors.white,
        primaryColor: Colors.white,
        textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.white),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          hintStyle: TextStyle(color: Colors.white),
        )),
  ));
}
