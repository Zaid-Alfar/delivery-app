import 'package:flutter/material.dart';

class SimpleSearchBar extends StatefulWidget {
  @override
  State<SimpleSearchBar> createState() => _SimpleSearchBarState();
}

class _SimpleSearchBarState extends State<SimpleSearchBar> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,

        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),
        hintText: 'Search', // Shows hint text when the field is empty
        prefixIcon: Icon(Icons.search,
            color: Theme.of(context).colorScheme.secondary), // Search icon
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              width: 1),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context)
                  .colorScheme
                  .secondary
                  .withOpacity(0.5), // Set the border color when not focused
              width: 1, // Border width when not focused
            )),
      ),
    );
  }
}
