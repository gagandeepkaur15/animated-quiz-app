import 'package:shared_preferences/shared_preferences.dart';

class UserSimplePrefences {
  static late SharedPreferences _preferences;
  static const _keyCoin = 'keyCoin';

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setCoins(int coins) async {
    await _preferences.setInt(_keyCoin, coins);
  }

  static getCoins() => _preferences.getInt(_keyCoin);
}
