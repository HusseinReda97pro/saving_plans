import 'package:flutter/material.dart';

extension Nav on BuildContext {
  void pushName(routeName) => Navigator.of(this).pushNamed(routeName);
  void pushReplacementNamed(routeName) =>
      Navigator.of(this).pushReplacementNamed(routeName);
  void pop() => Navigator.of(this).pop();
}
