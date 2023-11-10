import 'package:flutter/material.dart';
import 'package:musicapp/style/colors.dart';

class MultiSelectTabs extends StatefulWidget {
  @override
  _MultiSelectTabsState createState() => _MultiSelectTabsState();
}

class _MultiSelectTabsState extends State<MultiSelectTabs> {
  List<String> tabItems = [
    'African',
    'Asian',
    'Avantgarde',
    'Blues',
    'Country',
    'Electronic',
    'Folk',
    'Hip Hop',
    'Jazz',
    'Latin',
    'Lounge',
    'New Age',
    'Pop',
    'R&B',
    'Rock',
  ];

  List<int> selectedTabs = []; // List of selected tab indexes

  void toggleTabSelection(int index) {
    setState(() {
      if (selectedTabs.contains(index)) {
        selectedTabs.remove(index);
      } else {
        selectedTabs.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return  Container(
      height: 270,
      width: 400,
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio:2.5
              ),
              itemCount: tabItems.length,
              itemBuilder: (context, index) {
                bool isSelected = selectedTabs.contains(index);

                return InkWell(
                  onTap: () => toggleTabSelection(index),
                  child: Container(
                    height: 20,
                    width: 40,
                    margin: const EdgeInsets.all(5),

                    decoration: BoxDecoration(
                        color: isSelected ? btnColor : Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color:isSelected?btnColor: wColor.withOpacity(0.3)
                        )
                    ),


                    child: Center(
                      child: Text(
                        tabItems[index],
                        style: const TextStyle(
                          color: wColor,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}