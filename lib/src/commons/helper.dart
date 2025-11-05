import 'package:flutter/widgets.dart';
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
}
