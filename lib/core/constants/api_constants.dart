import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  static String baseUrl = dotenv.env['DEV_API_BASE_URL']!;
  static String jsonBaseUrl = dotenv.env['JSON_BASE_URL']!;
  static String register = 'register';
  static String logout = 'logout';
  static String formList = 'getForm';
  static String editProfile = 'account/basic_details_edit';
  static String getUserDetail = 'users';
  static String changePassword = 'account/password_change';
  static String forgotPassword = 'forgot-password';
  static String login = 'login';
  static String addForm = 'form';
  static String users = 'users';
}
