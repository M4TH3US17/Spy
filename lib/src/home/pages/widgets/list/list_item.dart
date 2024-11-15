import 'package:flutter/material.dart';
import 'package:spy/src/home/pages/widgets/list/list_item_section.dart';

class HomeListItemWidget extends StatefulWidget {
  const HomeListItemWidget({super.key});

  @override
  State<StatefulWidget> createState() => _HomeListItemWidgetState();
}

class _HomeListItemWidgetState extends State<HomeListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        HomeListSectionWidget(),
        HomeListSectionWidget(),
        HomeListSectionWidget(),
      ],
    );
  }
}
