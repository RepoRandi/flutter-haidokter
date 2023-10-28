import 'package:flutter/material.dart';
import 'package:haidokter/core.dart';

class StepNavigation extends StatefulWidget {
  final List<String> navigations;
  final List<Widget> pages;

  const StepNavigation(
      {Key? key, required this.navigations, required this.pages})
      : super(key: key);

  @override
  State<StepNavigation> createState() => _StepNavigationState();
}

class _StepNavigationState extends State<StepNavigation> {
  int selectedIndex = 0;

  void updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }

  double get progress {
    return (selectedIndex + 1) / widget.navigations.length;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 24.0,
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
                Expanded(
                  child: Row(
                    children: List.generate(
                      widget.navigations.length,
                      (index) {
                        var navigationName = widget.navigations[index];
                        bool selected = selectedIndex == index;
                        bool nextSelected = selectedIndex + 1 == index;
                        bool isLastIndex =
                            index == widget.navigations.length - 1;
                        return Row(
                          children: [
                            if (selected)
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                  GestureDetector(
                                    onTap: () => updateIndex(index),
                                    child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundColor: infoColor,
                                      child: CircleAvatar(
                                        radius: 14.0,
                                        backgroundColor: Colors.white,
                                        child: Text('${index + 1}'),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                  Text(navigationName),
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                ],
                              )
                            else if (nextSelected)
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                  GestureDetector(
                                    onTap: () => updateIndex(index),
                                    child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundColor: lightGreyColor,
                                      child: CircleAvatar(
                                        radius: 14.0,
                                        backgroundColor: Colors.white,
                                        child: Text(
                                          '${index + 1}',
                                          style:
                                              TextStyle(color: lightGreyColor),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                ],
                              )
                            else
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                  GestureDetector(
                                    onTap: () => updateIndex(index),
                                    child: CircleAvatar(
                                      radius: 15.0,
                                      backgroundColor: infoColor,
                                      child: Icon(
                                        MdiIcons.check,
                                        size: 14.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 3.0,
                                  ),
                                ],
                              ),
                            if (!isLastIndex)
                              Container(
                                height: 3,
                                width: 17,
                                decoration: BoxDecoration(
                                  color: lightGreyColor,
                                ),
                              )
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: lightGreyColor,
            ),
            child: Row(
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 600),
                  width: MediaQuery.of(context).size.width * progress,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        redColor,
                        orangeColor,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: IndexedStack(
            index: selectedIndex,
            children: widget.pages,
          )),
        ],
      ),
    );
  }
}
