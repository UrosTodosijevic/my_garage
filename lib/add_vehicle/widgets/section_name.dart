import 'package:flutter/material.dart';

class SectionName extends StatelessWidget {
  const SectionName({
    Key? key,
    required this.title,
    this.shouldHaveTopPadding = true,
  }) : super(key: key);

  final String title;
  final bool shouldHaveTopPadding;

  @override
  Widget build(BuildContext context) {
    var themeData = Theme.of(context);
    return Column(
      children: [
        shouldHaveTopPadding
            ? const SizedBox(height: 8.0)
            : const SizedBox.shrink(),
        Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: themeData.textTheme.headline6!.fontSize,
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
