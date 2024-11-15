import 'package:flutter/material.dart';
import 'package:spy/src/home/pages/widgets/list/list_item.dart';

class HomeListWidget extends StatefulWidget {
  const HomeListWidget({super.key});

  @override
  State<StatefulWidget> createState() => _HomeListWidgetState();
}

class _HomeListWidgetState extends State<HomeListWidget> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> homeItems = <dynamic>[1, 2, 3, 4, 5];

    return Column(
        children: homeItems
            .map<Widget>((homeItem) => const HomeListItemWidget())
            .toList());
  }
}
