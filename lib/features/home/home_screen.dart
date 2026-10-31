import 'package:bareeq/core/utils/exit_dialog.dart';
import 'package:bareeq/features/home/widgets/category_strip.dart';
import 'package:bareeq/features/home/widgets/featured_grid.dart';
import 'package:bareeq/features/home/widgets/gold_banner.dart';
import 'package:bareeq/features/home/widgets/home_search_bar.dart';
import 'package:bareeq/features/home/widgets/points_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.onOpentab});
  final void Function(int i)? onOpentab;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _canPop = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: _canPop,
      onPopInvokedWithResult: (didPop, result) async {
        if (didPop) return;
        final shouldPop = await ExitDialog.showExitDialog(context);
        if (shouldPop && context.mounted) {
          setState(() {
            _canPop = true;
          });
          SystemNavigator.pop();
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              HomeSearchBar(),
              SizedBox(height: 12),
              GoldBanner(),
              SizedBox(height: 24),
              CategoryStrip(onOpentab: widget.onOpentab ?? (_) {}),
              SizedBox(height: 24),
              FeaturedGrid(onOpentab: widget.onOpentab ?? (_) {}),
              SizedBox(height: 24),
              PointsBanner(onOpenTab: widget.onOpentab ?? (_) {}),
            ],
          ),
        ),
      ),
    );
  }
}
