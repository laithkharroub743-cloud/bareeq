import 'package:bareeq/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({super.key});
  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  late TextEditingController _searchBarController;
  @override
  void initState() {
    _searchBarController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchBarController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _searchBarController,
            decoration: InputDecoration(
              hintText: 'ابحث عن ساعات، عطور ،مجوهرات ،نظارات ...',
              prefixIcon: Icon(Icons.search, color: AppColors.muted),
            ),
          ),
        ),
        IconButton(
          padding: EdgeInsetsDirectional.all(4),
          onPressed: () {},
          icon: Icon(Icons.filter_list_rounded, color: AppColors.accentLight),
          style: IconButton.styleFrom(
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(8),
            ),
          ),
        ),
      ],
    );
  }
}
