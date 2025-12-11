import 'package:url_launcher/url_launcher.dart';

class CommonUrlLauncher {
  static Future<void> launchAppUrl(String url) async {
    if (!await launchUrl(
      Uri.tryParse(url)!,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
}
