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
      throw 'Could not launch $telLaunchUri';
    }
  }

  static void mail(String email) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );
    if (!await launchUrl(emailLaunchUri)) {
      throw 'Could not launch $emailLaunchUri';
    }
  }

  static void sms(String phoneNumber) async {
    final Uri smsLaunchUri = Uri(
      scheme: 'sms',
      path: phoneNumber,
    );
    if (!await launchUrl(smsLaunchUri)) {
      throw 'Could not launch $smsLaunchUri';
    }
  }
}
