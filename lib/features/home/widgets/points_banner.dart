import 'package:bareeq/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class PointsBanner extends StatelessWidget {
  const PointsBanner({super.key, required this.onOpenTab});
  final void Function(int i) onOpenTab;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onOpenTab(4);
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16,
                  horizontal: 8,
                ),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 12,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.accent,
                        AppColors.accent.withValues(alpha: 0.7),
                      ],
                    ),
                  ),
                  child: Text('👑'),
                ),
              ),
              SizedBox(width: 4),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'برنامج ولاء "نقاط بَريق"',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: 'لديك '),
                        TextSpan(
                          text: '1,450 نقطة ',
                          style: TextStyle(color: AppColors.accentLight),
                        ),
                        TextSpan(text: 'جاهزة للاستبدال '),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Text(
                'حسابي',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(Icons.arrow_forward, color: AppColors.primary),
            ],
          ),
        ),
      ),
    );
  }
}
