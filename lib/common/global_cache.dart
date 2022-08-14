import 'package:flutter/material.dart';

class GlobalCache {
  GlobalCache._privateConstructor();

  static final GlobalCache _instance = GlobalCache._privateConstructor();

  static GlobalCache get instance => _instance;

  ValueNotifier<int> selectedIndex = ValueNotifier(0);
}
