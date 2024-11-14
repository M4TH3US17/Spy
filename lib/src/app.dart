import 'package:flutter/material.dart';
import 'package:spy/src/home/controller/home_page_controller.dart';
import 'package:spy/src/home/pages/home_page.dart';

class SpyApp extends StatefulWidget {
  const SpyApp({super.key});

  @override
  State<SpyApp> createState() => _SpyAppState();
}

class _SpyAppState extends State<SpyApp> {
  // repositories

  // controllers
  late final homeController;

  @override
  void initState() {
    super.initState();

    /* instanciar controllers injetando os seus respectivos repositories */
    homeController = HomeController();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Teste App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
