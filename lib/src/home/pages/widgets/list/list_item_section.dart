import 'package:flutter/material.dart';

class HomeListSectionWidget extends StatefulWidget {
  const HomeListSectionWidget({super.key});

  @override
  State<StatefulWidget> createState() => _HomeListSectionWidgetState();
}

class _HomeListSectionWidgetState extends State<HomeListSectionWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double heightSection = (size.height * 0.1);
    double widthSection = (size.width / 3);

    return Container(
      height: heightSection,
      width: widthSection,
      color: Colors.blue,
      child: const Text("Section 1"),
    );
  }
}
