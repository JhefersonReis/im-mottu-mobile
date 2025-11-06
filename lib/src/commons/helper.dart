import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

enum ToastStatus { success, error, warning, info }

class Helper {
  void showToast({
    required String message,
    String? description,
    ToastStatus status = ToastStatus.info,
    int? duration,
  }) {
    toastification.show(
      title: Text(
        message,
        maxLines: 3,
        softWrap: true,
      ),
      description: description != null
          ? Text(
              description,
              maxLines: 3,
              softWrap: true,
            )
          : null,
      style: ToastificationStyle.fillColored,
      alignment: Alignment.topCenter,
      dismissDirection: DismissDirection.vertical,
      type: (() {
        switch (status) {
          case ToastStatus.success:
            return ToastificationType.success;
          case ToastStatus.error:
            return ToastificationType.error;
          case ToastStatus.warning:
            return ToastificationType.warning;
          case ToastStatus.info:
            return ToastificationType.info;
        }
      })(),
      autoCloseDuration: Duration(milliseconds: duration ?? 3000),
      showProgressBar: false,
      animationDuration: Duration(milliseconds: 350),
    );
  }

  Color getTypeColor(String type) {
    switch (type.toLowerCase()) {
      case 'normal':
        return Colors.grey;
      case 'fire':
        return Colors.orange;
      case 'water':
        return Colors.blue;
      case 'electric':
        return Colors.yellow[700]!;
      case 'grass':
        return Colors.green;
      case 'ice':
        return Colors.cyan;
      case 'fighting':
        return Colors.red[900]!;
      case 'poison':
        return Colors.purple;
      case 'ground':
        return Colors.brown;
      case 'flying':
        return Colors.indigo[200]!;
      case 'psychic':
        return Colors.pink;
      case 'bug':
        return Colors.lightGreen;
      case 'rock':
        return Colors.brown[700]!;
      case 'ghost':
        return Colors.deepPurple;
      case 'dragon':
        return Colors.indigo;
      case 'dark':
        return Colors.grey[900]!;
      case 'steel':
        return Colors.blueGrey;
      case 'fairy':
        return Colors.pink[200]!;
      default:
        return Colors.grey;
    }
  }

  String getDioErrorMessage(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Connection timeout. Please check your internet connection.';
      case DioExceptionType.connectionError:
        return 'No internet connection. Please check your network settings.';
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        if (statusCode == 404) {
          return 'Pokemon not found.';
        } else if (statusCode == 500) {
          return 'Server error. Please try again later.';
        }
        return 'Failed to load data. Status code: $statusCode';
      case DioExceptionType.cancel:
        return 'Request was cancelled.';
      case DioExceptionType.badCertificate:
        return 'Certificate verification failed.';
      case DioExceptionType.unknown:
        if (e.error.toString().contains('SocketException')) {
          return 'No internet connection. Please check your network settings.';
        }
        return 'An unexpected error occurred. Please try again.';
    }
  }
}
