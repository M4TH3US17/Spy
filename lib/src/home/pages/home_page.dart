import 'package:flutter/material.dart';
import 'package:spy/src/home/controller/home_page_controller.dart';
import 'package:spy/src/home/pages/widgets/list/list.dart';
//import 'package:spy/src/shared/model/base_resposta_api.dart';

class HomePage extends StatefulWidget {
  //final List<RespostaAPI> accounts;

  const HomePage({super.key /*, required this.accounts*/});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeController controller;

  @override
  void initState() {
    super.initState();

    // controller = null; //context.read<HomeController>();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.12),
          child: Text(
            "Spy App",
            style:
                TextStyle(color: Colors.white, backgroundColor: Colors.green),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
          padding: const EdgeInsets.only(top: 10),
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(color: Colors.blue[100]),
          child: const HomeListWidget()),
    );
  }
}
