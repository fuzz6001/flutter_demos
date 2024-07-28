import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum _Key {
  fabCounter,
  ;
}

class Storage {
  static late final SharedPreferences _prefs;

  /// Do not allow instance creation.
  Storage._();

  /// initializer.
  static Future<void> init() async {
    debugPrint('[Storage][init] enter');
    _prefs = await SharedPreferences.getInstance();
    debugPrint('[Storage][init] exit: prefs[${_prefs.hashCode}]');
  }

  /// FAB counter.
  static int get fabCounter => _prefs.getInt(_Key.fabCounter.name) ?? 0;

  static set fabCounter(int count) {
    _prefs.setInt(_Key.fabCounter.name, count);
  }
}
