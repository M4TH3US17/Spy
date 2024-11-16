import 'package:flutter/material.dart';
import 'package:spy/src/home/pages/widgets/list/list_item.dart';
import 'package:spy/src/shared/mocks/accounts.dart';

class HomeListWidget extends StatefulWidget {
  const HomeListWidget({super.key});

  @override
  State<StatefulWidget> createState() => _HomeListWidgetState();
}

class _HomeListWidgetState extends State<HomeListWidget> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> homeItems = [
      ...listaDeInstagramsMock(),
      ...listaDeFacebooksMock()
    ];

    return Column(
        children: homeItems
            .map<Widget>((homeItem) => HomeListItemWidget(
                  data: homeItem,
                ))
            .toList());
  }
}
