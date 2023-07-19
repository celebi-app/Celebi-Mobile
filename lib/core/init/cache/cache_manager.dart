import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/enums/preferences_keys.dart';

class CacheManager {
  static final CacheManager _instance = CacheManager._init();
  static CacheManager get instance => _instance;

  SharedPreferences? _preferences;

  CacheManager._init() {
    SharedPreferences.getInstance().then((value) => _preferences = value);
  }

  static Future prefrencesInit() async {
    instance._preferences ??= await SharedPreferences.getInstance();
  }

  Future<void> clearAll() async {
    await _preferences!.clear();
  }

  Future<void> setStringValue(PreferencesKeys key, String value) async {
    await _preferences!.setString(key.toString(), value);
  }

  Future<void> setIntValue(PreferencesKeys key, int value) async {
    await _preferences!.setInt(key.toString(), value);
  }

  Future<void> setBoolValue(PreferencesKeys key, bool value) async {
    await _preferences!.setBool(key.toString(), value);
  }

  String? getStringValue(PreferencesKeys key) => _preferences?.getString(key.toString());

  int? getIntValue(PreferencesKeys key) => _preferences?.getInt(key.toString());

  bool? getBoolValue(PreferencesKeys key) => _preferences?.getBool(key.toString());
}
