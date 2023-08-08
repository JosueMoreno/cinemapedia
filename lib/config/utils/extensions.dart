import 'package:flutter/material.dart';

extension StringExtensions on String? {
  bool get isNull => this == null;

  bool get isNotNull => this != null;
}

extension FunctionExtensions on Function? {
  bool get isNull => this == null;

  bool get isNotNull => this != null;
}

extension ImageExtensions on ImageChunkEvent? {
  bool get isNull => this == null;

  bool get isNotNull => this != null;
}