import 'package:flutter/material.dart';

class KeyboardButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const KeyboardButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).primaryTextTheme.bodyMedium,
        ),
      ),
    );
  }
}
