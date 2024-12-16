import 'package:delivery_app/models/items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class ItemsFilter extends StatefulWidget {
  ItemsFilter({super.key, required this.availableitems});
  final List<Item> availableitems;

  @override
  State<ItemsFilter> createState() => _ItemsFilterState();
}

class _ItemsFilterState extends State<ItemsFilter> {





   Set<int> _selectedIndices = {};
  @override
  Widget build(BuildContext context) {
    
   return SizedBox(
      height: 34,
      child: ListView.builder(
        itemCount: widget.availableitems.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          bool isSelected = _selectedIndices.contains(index); // Check if the current index is selected

          return Container(
            padding: EdgeInsets.only(left: 2),
            height: 34,
            child: TextButton.icon(
              onPressed: () {
                setState(() {
                  if (isSelected) {
                    _selectedIndices.remove(index); // Deselect if it's already selected
                  } else {
                    _selectedIndices.add(index); // Select if not already selected
                  }
                });
              },
              label: Text(
                widget.availableitems[index].name,
                style: TextStyle(
                  color: isSelected
                      ? Theme.of(context).colorScheme.onSecondary // Text color when selected
                      : Theme.of(context).colorScheme.secondary, // Text color when not selected
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: isSelected
                    ? Color.fromRGBO(226, 203, 255, 1) // Background color when selected
                    : Colors.white, // Background color when not selected
                alignment: Alignment.center,
                overlayColor: Theme.of(context).colorScheme.secondary,
                side: BorderSide(
                  color: Theme.of(context)
                      .colorScheme
                      .secondary
                      .withOpacity(0.2),
                ),
                fixedSize: Size(double.infinity, 34),
              ),
              icon: isSelected
                  ? SvgPicture.asset("assets/images/check.svg")
                  : SizedBox.shrink(), // No icon when not selected
            ),
          );
        },
      ),
    );


  }
}
