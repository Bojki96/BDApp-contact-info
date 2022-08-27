import 'package:dio/dio.dart';
import 'package:flutter_template/services/config.dart';

class HTTPInterceptor extends InterceptorsWrapper {
  // @override
  // void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
  //   // String? token = SharedPreferencesService().token;

  //   // if (token != null) {
  //   //   options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
  //   // }
  //   return super.onRequest(options, handler);
  // }

  // @override
  // void onError(DioError err, ErrorInterceptorHandler handler) {
  //   print(jsonEncode(err.response?.data));
  //   return super.onError(err, handler);
  // }
}

class HTTP {
  late Dio client;
  HTTP() {
    client = Dio(BaseOptions(
      baseUrl: ConfigService.backendUrl,
      receiveDataWhenStatusError: true,
      contentType: 'application/json',
      validateStatus: (status) => status! < 300,
    ));
    client.interceptors.add(
      HTTPInterceptor(),
    );
  }

  // Future<String> loginAsUser(int userId) async {
  //   Response response = await client.post(
  //     '/admin/clients/$userId/login',
  //   );
  //   return response.data['token'];
  // }

}

final http = HTTP();
