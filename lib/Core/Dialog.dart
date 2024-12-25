import 'package:flutter/material.dart';

class DialogUtiles {
  static void loadingDialoge(BuildContext context, String message,
      {bool isCanabole = false}) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Row(
              children: [
                const CircularProgressIndicator(),
                const SizedBox(
                  width: 5,
                ),
                Text(message),
              ],
            ),
          );
        },
        barrierDismissible: isCanabole);
  }

  static void hideDialoge(BuildContext context) {
    Navigator.pop(context);
  }

  static void messageDialoge(
      BuildContext context,
      String message,
      String? positiveAction,
      String? negativeAction,
      VoidCallback? positiveCallBack,
      VoidCallback? negativeCallBack,
      {bool isCanabole = false}) {
    List<Widget> actions = [];
    if (positiveAction != null) {
      actions.add(TextButton(
          onPressed: () {
            positiveCallBack?.call();
          },
          child: Text(positiveAction)));
    }
    if (negativeAction != null) {
      actions.add(TextButton(
          onPressed: () {
            negativeCallBack?.call();
          },
          child: Text(negativeAction)));
    }
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: actions,
            content: Row(
              children: [
                Text(message),
              ],
            ),
          );
        },
        barrierDismissible: isCanabole);
  }
}
