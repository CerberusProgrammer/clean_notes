import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const colors = [];

const Map<String, Color> colores = {
  'primario': Color(0xFF262626),
  'secundario': Color(0xFFFF6347),
  'terciario': Color(0xFF636363),
  'acento1': Color(0xFFC62C2C),
  'acento2': Color(0xFFF2994A),
  'acento3': Color(0xFF99F099),
  'acento4': Color(0xFF4CAF50),
  'textoPrimario': Color(0xFFFFFFFF),
  'textoSecundario': Color(0xFF999999),
  'fondoPrimario': Color(0xFF262626),
  'fondoSecundario': Color(0xFF333333),
};

final colorProvider = StateProvider<Color>((ref) => Colors.indigo);

final themeProvider = Provider<ThemeData>(
  (ref) => ThemeData(
    colorSchemeSeed: ref.watch(colorProvider),
    brightness: Brightness.dark,
  ),
);
