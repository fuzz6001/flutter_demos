import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
}
