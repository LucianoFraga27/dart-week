import 'package:flutter/material.dart';

extension UnFocusExtension on BuildContext {
  void unfocus() => Focus.of(this).unfocus();
}
