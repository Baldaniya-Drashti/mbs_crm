import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConstants {
  static String baseUrl = dotenv.env['DEV_API_BASE_URL']!;
  static String jsonBaseUrl = dotenv.env['JSON_BASE_URL']!;
  static String register = 'register';
  static String login = 'login';
  static String logout = 'logout';
  static String home = 'navigation';
  static String subCategoryList = 'navigation/sub';
  static String mainFilter = 'woo-filter';
  static String product = 'product';
  static String editProfile = 'account/basic_details_edit';
  static String getUserDetail = 'me';
  static String changePassword = 'account/password_change';
  static String forgotPassword = 'forgot-password';
  static String filterList = 'attribute-terms';
  static String filterCategories = 'product-categories';
  static String favoriteProducts = 'product-favourites';
}
