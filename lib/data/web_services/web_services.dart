import 'package:dio/dio.dart';

import '../../constants/api_constants.dart';

class WebServices {
  late Dio dio;

  WebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 20 * 1000, // 60 seconds,
      receiveTimeout: 20 * 1000,
    );

    dio = Dio(options);
  }

  Future<Response?> get(String url, {headers, query}) async {
    Options options = Options();
    if (headers != null) options.headers = headers;

    return dio.get(url, queryParameters: query,options: options);
  }

  Future<Response?> post(url, {body, headers, query}) async {
    print("post:$url");
      return await dio.post(url,
          data: body,
          queryParameters: query,
          options: Options(headers: headers));
  }
}
