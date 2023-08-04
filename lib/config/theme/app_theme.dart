import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appTheme = Provider<ThemeData>(
  (ref) => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: const Color(0xFF2862F5),
  ),
);
