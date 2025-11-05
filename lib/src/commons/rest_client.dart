import 'package:dio/dio.dart';
import 'package:dio/io.dart';

import 'interceptors/connection_interceptor.dart';

final class RestClient extends DioForNative {
  RestClient()
    : super(
        BaseOptions(
          baseUrl: 'https://pokeapi.co/api/v2',
          headers: {
            'Accept': 'application/json',
          },
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 60),
        ),
      ) {
    interceptors.addAll([
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
      ConnectionInterceptor(),
    ]);
  }
}
