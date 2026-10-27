import 'package:bareeq/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsetsDirectional.all(8),
        actions: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(16),
              color: const Color.fromARGB(181, 255, 217, 103),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Text('بوابات الدخول الآمن 🔒'),
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Text('');
                },
              ),
            ),
            child: Row(
              children: [
                Text(
                  'تصفح المتجر كزائر',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(Icons.arrow_forward, color: AppColors.primary),
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'lib/assets/icon/bareeq-logo.svg',
                  width: 100,
                  height: 100,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'بَـريـق',
                        style: Theme.of(context).textTheme.headlineLarge!
                            .copyWith(
                              color: AppColors.primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      TextSpan(
                        text: '.',
                        style: Theme.of(context).textTheme.displayLarge!
                            .copyWith(color: AppColors.secondary),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'كل ما يلمع في عالمك، بلمسة واحدة',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.onSurfaceSecondry,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderColor),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'تسجيل الدخول إلى حسابك',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'البريد الإلكتروني أو رقم الجوال',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(height: 4),
                    TextField(controller: _emailController),
                    SizedBox(height: 12),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Text(
                            'كلمة المرور',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'نسيت كلمة المرور؟',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(color: AppColors.secondary),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextField(controller: _passwordController),
                    SizedBox(height: 14),
                    Container(
                      padding: EdgeInsetsDirectional.symmetric(
                        vertical: 4,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16),
                        gradient: AppColors.greenGradient,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent,
                          backgroundColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(16),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'تسجيل الدخول والمتابعة ',
                              style: Theme.of(context).textTheme.bodyMedium!
                                  .copyWith(color: AppColors.surface),
                            ),
                            Icon(Icons.arrow_forward, color: AppColors.surface),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(color: AppColors.borderColor, thickness: 1),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: 24,
                    ),
                    child: Text(
                      'أو الدخول السريع عبر',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ),
                  Expanded(
                    child: Divider(color: AppColors.borderColor, thickness: 1),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.borderColor),
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(16),
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsetsDirectional.symmetric(vertical: 4),
                        child: Text(
                          '🍎 حساب apple ',
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(color: AppColors.onSurface),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: AppColors.borderColor),
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(16),
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsetsDirectional.symmetric(vertical: 4),
                        child: Text(
                          '🌎 حساب google ',
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(color: AppColors.onSurface),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 36),
            Text.rich(
              textAlign: TextAlign.center,
              TextSpan(
                children: [
                  TextSpan(text: 'ليس لديك حساب في بَريق؟'),
                  TextSpan(
                    text: 'إنشاء حساب جديد',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      decoration: TextDecoration.underline,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
