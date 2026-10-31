
import 'package:bareeq/core/utils/exit_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  bool _canPop = false;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _canPop,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        final shouldGoToHomeScreen = await ExitDialog.showExitDialog(context);
        if (shouldGoToHomeScreen && context.mounted) {
          setState(() {
            _canPop = true;
          });
          context.pop();
        }
      },
      child: Scaffold(
        body: Center(child: Center(child: Text('شاشة المنتجات'))),
      ),
    );
  }
}
