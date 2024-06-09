import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final themeProvider = Provider<ThemeData>(
  (ref) => ThemeData(
    colorSchemeSeed: Colors.amber,
    brightness: Brightness.dark,
  ),
);
