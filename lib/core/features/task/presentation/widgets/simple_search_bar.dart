import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleSearchBar extends StatelessWidget {
  SimpleSearchBar({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12.w),
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.secondary),
        hintText: 'Search',
        prefixIcon:
            Icon(Icons.search, color: Theme.of(context).colorScheme.secondary),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              width: 1),
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
              width: 1,
            )),
      ),
    );
  }
}
