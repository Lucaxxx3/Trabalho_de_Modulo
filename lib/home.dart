import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'cadastro.dart';

void main() => runApp((const MyApp()));

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const Home());
  }
}
