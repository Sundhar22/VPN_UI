// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Country {
  String src;
  String name;
  IconData signalStrength;
  IconData button;
  bool selected;
  Country({
    required this.src,
    required this.name,
    required this.signalStrength,
    required this.button,
    required this.selected,
  });
}
