import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import 'package:haidokter/core.dart';

class ExpandableMedicalTreatmentCard extends StatelessWidget {
  final String title;
  final List<String> items;
  final int itemsToShowInCollapsed;
  final TextStyle? titleStyle;
  final TextStyle? itemStyle;

  ExpandableMedicalTreatmentCard({
    required this.title,
    required this.items,
    this.itemsToShowInCollapsed = 5,
    this.titleStyle,
    this.itemStyle,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> _buildItemsList(List<String> items) {
      return items
          .map((item) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text('• $item',
                    style: itemStyle ??
                        TextStyle(fontSize: 14.0, color: greyColor)),
              ))
          .toList();
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ExpandablePanel(
          theme: ExpandableThemeData(
            headerAlignment: ExpandablePanelHeaderAlignment.center,
            tapBodyToCollapse: true,
          ),
          header: Text(
            title,
            style: titleStyle ??
                TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          collapsed: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildItemsList(items.sublist(0, itemsToShowInCollapsed)),
          ),
          expanded: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildItemsList(items),
          ),
          builder: (_, collapsed, expanded) {
            return Padding(
              padding: const EdgeInsets.only(top: 10.0),
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
