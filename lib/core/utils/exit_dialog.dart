import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExitDialog {
  static Future<bool> showExitDialog(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('الخروج'),
        content: const Text('هل تريد مغادرة الشاشة ؟ '),
        actions: [
          TextButton(
            onPressed: () {
              context.pop(false);
            },
            child: Text('لا'),
          ),
          TextButton(
            onPressed: () {
              context.pop(true);
            },
            child: Text('نعم'),
          ),
        ],
      ),
    );
    return result ?? false;
  }
}
