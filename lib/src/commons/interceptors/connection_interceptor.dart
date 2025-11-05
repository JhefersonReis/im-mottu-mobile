import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

/// Interceptor personalizado para verificar a conexão à internet antes de fazer uma requisição Dio.
class ConnectionInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Instância de verificador de conexão à internet.
    final internetConnectionChecker = InternetConnectionChecker.createInstance();

    // Obter o status da conexão à internet.
    final internetStatus = await internetConnectionChecker.connectionStatus;

    switch (internetStatus) {
      case InternetConnectionStatus.connected:
        // If connected to the internet, proceed with the request.
        handler.next(options);
        break;
      case InternetConnectionStatus.disconnected:
        // If not connected to the internet, reject the request with a connection error.
        handler.reject(
          DioException.connectionError(
            requestOptions: options,
            reason: 'no_internet',
            error: 'No internet connection',
          ),
        );
        break;
      case InternetConnectionStatus.slow:
        // If the connection is slow, proceed with the request.
        handler.next(options);
        break;
    }
  }
}
