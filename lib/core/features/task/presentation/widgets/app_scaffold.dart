import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppScaffold extends StatelessWidget {
  final Widget? appBar;
  final Widget? body;
  final Color? backgroundColor;

  const AppScaffold(
      {super.key,
      required this.appBar,
      required this.body,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor?? Theme.of(context).colorScheme.surface,
      appBar: appBar != null
          ? PreferredSize(
              preferredSize: const Size.fromHeight(130),
              child: appBar!,
            )
          : null,
          body: body?? const SizedBox(),
    );
  }
}
