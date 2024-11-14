import 'package:flutter/material.dart';
import 'package:spy/src/home/controller/home_page_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeController controller;
  int _value = 0;

  @override
  void initState() {
    super.initState();

    // controller = null; //context.read<HomeController>();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _increment() {
    setState(() {
      _value += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        child: Text('VALOR: $_value'),
        color: Colors.deepOrange,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: Text('INCREMENTAR'),
      ),
    );
  }
}
