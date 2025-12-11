import 'dart:io';
import 'package:mbs_crm/infrastructure/current_user/current_user_response.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'dart:convert';
import 'package:mbs_crm/core/constants/storage_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<String?> getDeviceId() async {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.id;
  } else {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    return iosInfo.identifierForVendor ?? '';
  }
}

Future<void> setToken(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(StorageConstants.token, token);
}

Future<String> getToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(StorageConstants.token) ?? '';
}

Future<void> setUserData(CurrentUserDTO userData) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(StorageConstants.userData, jsonEncode(userData.toJson()));
}

Future<CurrentUserDTO> getUserData() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return CurrentUserDTO.fromJson(
    jsonDecode(prefs.getString(StorageConstants.userData) ?? '{}'),
  );
}

Future<void> setUserType(int user) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setInt(StorageConstants.userType, user);
}

Future<int> getUserType() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getInt(StorageConstants.userType) ?? 2;
}

Future<void> clearLocalStorage() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
}
