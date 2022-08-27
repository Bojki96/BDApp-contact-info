import 'package:flutter_dotenv/flutter_dotenv.dart';

class ConfigService {
  static Future load() async {
    const env = String.fromEnvironment('ENVIRONMENT');
    return dotenv.load(fileName: 'environments/$env.env');
  }

  static bool useDevicePreview =
      dotenv.env['USE_DEVICE_PREVIEW']!.toLowerCase() == 'true';
  static String backendUrl = dotenv.env['BACKEND_URL']!;
}
