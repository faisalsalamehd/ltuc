import 'package:ltuc/preferences/shared_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static SharedPreferences? sharedPreferences;

  static Future<void> initSharedPref() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> setString({
    required String key,
    required String value,
  }) async {
    await sharedPreferences!.setString(key, value);
  }

  static String getString({required String key}) {
    String? data = sharedPreferences!.getString(key);
    return data ?? 'No Data';
  }

  static String getJwt() {
    String? data = sharedPreferences!.getString(SharedStrign.jwt);
    return data ?? 'No Data';
  }

  static bool getIsFirstTime() {
    bool? data = sharedPreferences!.getBool(SharedStrign.isFirstTime);
    return data ?? true;
  }

  static Future<void> setIsFirstTime({
    required String key,
    required bool value,
  }) async {
    await sharedPreferences!.setBool(key, value);
  }

  static void deleteData({required String key}) {
    sharedPreferences!.remove(key);
  }

  Map<String, String> header = {
    'Content-Type': 'application/json',
    'Authriazation': "Barear ${SharedStrign.jwt}",
  };
}
