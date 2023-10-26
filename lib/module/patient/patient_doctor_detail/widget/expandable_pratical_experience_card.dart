import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';

class ExpandablePraticalExperienceCard extends StatelessWidget {
  final String title;
  final String content;
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;

  ExpandablePraticalExperienceCard({
    required this.title,
    required this.content,
    this.titleStyle,
    this.contentStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpandablePanel(
        theme: ExpandableThemeData(
          headerAlignment: ExpandablePanelHeaderAlignment.center,
          tapBodyToExpand: true,
          tapBodyToCollapse: true,
          hasIcon: true,
        ),
        header: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: titleStyle ??
                TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
        ),
        collapsed: Container(),
        expanded: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
          child: Text(
            content,
            softWrap: true,
            style: contentStyle ?? TextStyle(fontSize: 14.0),
          ),
        ),
      ),
    );
  }
}
