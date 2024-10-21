import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final colorProvider = StateProvider<Color>((ref) => Colors.indigo);

final themeProvider = Provider<ThemeData>(
  (ref) => ThemeData(
    colorSchemeSeed: ref.watch(colorProvider),
    brightness: Brightness.dark,
  ),
);
