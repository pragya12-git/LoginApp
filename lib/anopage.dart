import 'package:flutter/material.dart';

class Ano extends StatefulWidget {
  const Ano({super.key});

  @override
  State<Ano> createState() => _AnoState();
}

class _AnoState extends State<Ano> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page"),),
    );
  }
}