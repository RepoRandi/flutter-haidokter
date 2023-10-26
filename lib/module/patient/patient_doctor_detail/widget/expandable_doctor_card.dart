import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:haidokter/core.dart';

class ExpandableDoctorCard extends StatelessWidget {
  final String title;
  final String collapsedText;
  final String expandedText;
  final TextStyle? textStyle;

  ExpandableDoctorCard({
    required this.title,
    required this.collapsedText,
    required this.expandedText,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 6),
        child: ExpandablePanel(
          theme: ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            tapBodyToCollapse: true,
          ),
          header: Text(
            title,
            style: textStyle ??
                TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          collapsed: Text(
            collapsedText,
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: textStyle ?? TextStyle(fontSize: 14.0, color: greyColor),
          ),
          expanded: Text(
            expandedText,
            softWrap: true,
            style: textStyle ?? TextStyle(fontSize: 14.0, color: greyColor),
          ),
          builder: (_, collapsed, expanded) {
            return Padding(
              padding: EdgeInsets.only(left: 0, right: 10, bottom: 10),
              child: Expandable(
                collapsed: collapsed,
                expanded: expanded,
                theme: const ExpandableThemeData(crossFadePoint: 0),
              ),
            );
          },
        ),
      ),
    );
  }
}
