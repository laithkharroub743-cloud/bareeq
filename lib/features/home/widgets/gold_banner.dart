import 'package:bareeq/core/theme/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GoldBanner extends StatelessWidget {
  const GoldBanner({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          alignment: Alignment.topRight,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              colors: [
                AppColors.primary,
                AppColors.primary.withValues(alpha: 0.8),
              ],
              end: AlignmentGeometry.topLeft,
              begin: AlignmentGeometry.topRight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 24, right: 16),
                  decoration: BoxDecoration(
                    color: AppColors.accentLight.withValues(alpha: 0.8),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Text(
                    'موسم البريق الذهبي ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    'خصومات تصل إلى 40% على الساعات والعطور',
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge!.copyWith(color: AppColors.surface),
                    softWrap: true,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'استخدم الكود',
                            style: Theme.of(context).textTheme.bodySmall!
                                .copyWith(color: AppColors.surface),
                          ),
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'تم تفعيل كود الخصم تلقائيا في حسابك',
                                    ),
                                  ),
                                );
                              },
                            text: 'BAREEQ20',
                            style: TextStyle(
                              color: AppColors.accentLight,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColors.accentLight,
                              decorationThickness: 2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' لخصم إضافي 20%',
                            style: Theme.of(context).textTheme.bodySmall!
                                .copyWith(color: AppColors.surface),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accentLight,
                  ),
                  child: Text(
                    'تسوق العروض الآن',
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge!.copyWith(color: AppColors.surface),
                  ),
                ),
              ],
            ),
          ),
        ),
        PositionedDirectional(
          end: -10,
          bottom: -10,
          child: SvgPicture.asset(
            'lib/assets/icon/star-logo.svg',
            width: 130,
            height: 130,
          ),
        ),
      ],
    );
  }
}
