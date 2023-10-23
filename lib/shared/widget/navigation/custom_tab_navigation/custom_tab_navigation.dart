import 'package:flutter/material.dart';
import 'package:haidokter/core.dart';

class CustomTabNavigation extends StatefulWidget {
  final List<String> headers;
  final List<Widget> children;

  const CustomTabNavigation(
      {Key? key, required this.headers, required this.children})
      : super(key: key);

  @override
  State<CustomTabNavigation> createState() => _CustomTabNavigationState();
}

class _CustomTabNavigationState extends State<CustomTabNavigation> {
  int selectedIndex = 0;

  void updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            child: Row(
              children: List.generate(widget.headers.length, (index) {
                var header = widget.headers[index];
                bool selected = selectedIndex == index;

                if (selected)
                  return GestureDetector(
                    onTap: () => updateIndex(index),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                        border: Border.all(
                            width: 1,
                            color: Colors.grey[100]!.withOpacity(0.5)),
                      ),
                      child: Center(
                        child: Text(
                          header,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: infoColor),
                        ),
                      ),
                    ),
                  );
                else
                  return GestureDetector(
                    onTap: () => updateIndex(index),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width * 0.35,
                      decoration: BoxDecoration(
                        color: disabledColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(4),
                          topRight: Radius.circular(4),
                        ),
                        border: Border.all(width: 1, color: Colors.grey[100]!),
                      ),
                      child: Center(
                        child: Text(
                          header,
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ),
                    ),
                  );
              }),
            ),
          ),
        ),
        Expanded(
            child: IndexedStack(
          index: selectedIndex,
          children: widget.children,
        )),
      ],
    );
  }
}
