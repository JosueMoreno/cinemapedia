import 'package:flutter/material.dart';

extension IntExtensions on int? {
  bool get isNull => this == null;

  bool get isNotNull => this != null;
}

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