import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefs {
  static SharedPreferences? _prefs;

  static Future<SharedPreferences> loadPrefs() async {
    _prefs ??= await SharedPreferences.getInstance();
    return _prefs!;
  }

  static setCurrentUserName(String name) async {
    final prefs = await loadPrefs();

    await prefs.setString('CurrentUserName', name);
  }

  static Future<String?> getCurrentInUserName() async {
    final prefs = await loadPrefs();

    return prefs.getString('CurrentUserName');
  }
}
