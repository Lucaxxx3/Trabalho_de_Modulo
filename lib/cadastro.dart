import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'Home.dart';

void main() => runApp((const MyApp() ));

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});
  @override
  build(context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const Home());
  }
}
