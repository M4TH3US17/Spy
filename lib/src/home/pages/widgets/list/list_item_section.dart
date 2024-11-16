import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:spy/src/shared/utils/converters.dart';

enum SectionType { ACTIONS, DETAILS, LOGO }

class HomeListSectionWidget extends StatefulWidget {
  final dynamic data;
  final SectionType sectionType;

  const HomeListSectionWidget(
      {super.key, required this.data, required this.sectionType});

  @override
  State<StatefulWidget> createState() => _HomeListSectionWidgetState();
}

class _HomeListSectionWidgetState extends State<HomeListSectionWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(bottom: convertHeight(2, size.height)),
      height: convertHeight(50, size.height),
      width: _getWidthForSection(size.width),
      color: _getColorForSection(),
      child: Row(
        children: [
          Text(
            _getTextForSection(),
            style: TextStyle(
              fontSize: convertHeight(16, size.height),
              color: _getTextColorForSection(),
            ),
          ),
        ],
      ),
    );
  }

  double _getWidthForSection(double screenWidth) {
    switch (widget.sectionType) {
      case SectionType.LOGO:
        return screenWidth * 0.2;
      case SectionType.DETAILS:
        return screenWidth * 0.6;
      default:
        return screenWidth * 0.2;
    }
  }

  Color _getColorForSection() {
    switch (widget.sectionType) {
      case SectionType.LOGO:
        return Colors.green;
      case SectionType.DETAILS:
        return Colors.red;
      default:
        return Colors.blue;
    }
  }

  String _getTextForSection() {
    switch (widget.sectionType) {
      case SectionType.LOGO:
        return describeEnum(widget.data.platform);
      case SectionType.DETAILS:
        return 'details';
      default:
        return 'actions';
    }
  }

  Color _getTextColorForSection() {
    if (widget.sectionType == SectionType.DETAILS) {
      return Colors.black;
    }
    return Colors.white;
  }
}
