import 'package:url_launcher/url_launcher.dart';

class Launch {
  static void url(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  static void phone(String phoneNumber) async {
    final Uri telLaunchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    if (!await launchUrl(telLaunchUri)) {
      throw 'Could not launch $url';
    }
  }
}
