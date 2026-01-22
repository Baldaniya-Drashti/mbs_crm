import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  static String baseUrl = dotenv.env['DEV_API_BASE_URL']!;
  static String jsonBaseUrl = dotenv.env['JSON_BASE_URL']!;
  static String addUser = 'register';
  static String logout = 'logout';
  static String formList = 'getForm';
  static String editProfile = 'account/basic_details_edit';
  static String getUserDetail = 'users';
  static String changePassword = 'account/password_change';
  static String forgotPassword = 'forgot-password';
  static String login = 'login';
  static String addForm = 'form';
  static String users = 'users';
  static String updateUser = 'user-update';
  static String deleteUser = 'user-delete';
  static String deleteForm = 'form';
  static String getAllFormList = 'getAllFormList';
}
