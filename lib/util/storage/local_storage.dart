import 'dart:convert';

import 'package:encrypt/encrypt.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:workly/util/encrypt/encrypt.dart';

abstract class LocalStorage {
  static Future<void> set({required String key, required String value}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, Encrypt.encrypt(value: value));
  }

  static Future<String?>? get({required String key}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var encrypt = prefs.getString(key);

    try {
      if (encrypt != null && encrypt.isNotEmpty) {
        final encryptedBytes = base64.decode(encrypt);

        final encrypted = Encrypted(encryptedBytes);

        return Encrypt.decrypt(value: encrypted);
      }
    } on Exception {
      return null;
    }
    return null;
  }
}
