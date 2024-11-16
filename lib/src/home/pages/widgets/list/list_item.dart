import 'package:flutter/material.dart';
import 'package:spy/src/home/pages/widgets/list/list_item_section.dart';

class HomeListItemWidget extends StatefulWidget {
  final dynamic data;

  const HomeListItemWidget({super.key, required this.data});

  @override
  State<StatefulWidget> createState() => _HomeListItemWidgetState();
}

class _HomeListItemWidgetState extends State<HomeListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomeListSectionWidget(
          data: widget.data,
          sectionType: SectionType.LOGO,
        ),
        HomeListSectionWidget(
            data: widget.data, sectionType: SectionType.DETAILS),
        HomeListSectionWidget(
          data: widget.data,
          sectionType: SectionType.ACTIONS,
        ),
      ],
    );
  }
}
