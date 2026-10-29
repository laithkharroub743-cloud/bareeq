import 'package:bareeq/core/theme/app_colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BareeqHeader extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(72);
  const BareeqHeader({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(16),
        shape: BoxShape.rectangle,
      ),
      child: SafeArea(
        child: Row(
          children: [
            SvgPicture.asset(
              'lib/assets/icon/bareeq-logo.svg',
              height: 40,
              width: 40,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'بَـريـق',
                          style: Theme.of(context).textTheme.bodyLarge!
                              .copyWith(color: AppColors.surface),
                        ),
                        TextSpan(
                          text: '.',
                          style: Theme.of(context).textTheme.bodyLarge!
                              .copyWith(color: AppColors.accentLight),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'مرحباً بك في متجر بَريق ✨',
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall!.copyWith(color: AppColors.surface),
                  ),
                ],
              ),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.borderColor),
                color: AppColors.primaryLight.withValues(alpha: 0.6),
              ),
              child: TextButton.icon(
                onPressed: () {},
                label: Text(
                  'دخول',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.accentLight.withValues(alpha: 0.8),
                  ),
                ),
                icon: Icon(
                  Icons.key,
                  color: AppColors.accentLight.withValues(alpha: 0.8),
                ),
              ),
            ),
            SizedBox(width: 8),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.borderColor),
                color: AppColors.primaryLight.withValues(alpha: 0.8),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_active_outlined,
                  color: AppColors.accentLight.withValues(alpha: 0.8),
                ),
              ),
            ),
            SizedBox(width: 8),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.borderColor),
                color: AppColors.accentLight,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Badge(
                  label: Text('3'),
                  child: Icon(Icons.shopping_bag, color: AppColors.surface),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
