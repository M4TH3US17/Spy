import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spy/src/shared/enums/platforms.dart';
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
        mainAxisAlignment: (widget.sectionType == SectionType.LOGO)
            ? MainAxisAlignment.center
            : MainAxisAlignment.start,
        children: [
          _getTextForSection(size),
        ],
      ),
    );
  }

  double _getWidthForSection(double screenWidth) {
    switch (widget.sectionType) {
      case SectionType.LOGO:
        return screenWidth * 0.1;
      case SectionType.DETAILS:
        return screenWidth * 0.7;
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

  Widget _getTextForSection(Size size) {
    IconData platformIcon =
        (describeEnum(widget.data.platform) == describeEnum(Platform.FACEBOOK))
            ? FontAwesomeIcons.facebook
            : FontAwesomeIcons.instagram;

    switch (widget.sectionType) {
      case SectionType.LOGO:
        return FaIcon(
          platformIcon,
          size: convertHeight(25, size.height),
          color: Colors.black,
        );
      case SectionType.DETAILS:
        return Text(
          'details',
          style: TextStyle(
            fontSize: convertHeight(16, size.height),
            color: _getTextColorForSection(),
          ),
        );
      default:
        return Text(
          'actions',
          style: TextStyle(
            fontSize: convertHeight(16, size.height),
            color: _getTextColorForSection(),
          ),
        );
    }
  }

  Color _getTextColorForSection() {
    if (widget.sectionType == SectionType.DETAILS) {
      return Colors.black;
    }
    return Colors.white;
  }
}
