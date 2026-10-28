import 'package:bareeq/core/theme/app_colors.dart';
import 'package:bareeq/core/utils/validators.dart';
import 'package:bareeq/core/widgets/bareeq_logo.dart';
import 'package:bareeq/core/widgets/gradient_button.dart';
import 'package:bareeq/core/widgets/password_field.dart';
import 'package:bareeq/screens/signup_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  bool _isLoading = false;
  @override
  void initState() {
    super.initState();

    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void handleLogin() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await Future.delayed(const Duration(seconds: 2));
      if (!mounted) return;
      setState(() {
        _isLoading = false;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('تم تسجيل الدخول')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
                BareeqLogo(),
                SizedBox(height: 4),
                Text(
                  'كل ما يلمع في عالمك، بلمسة واحدة',
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium!.copyWith(color: AppColors.muted),
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
                child: Form(
                  key: _formKey,
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
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: _emailController,
                        validator: (email) => validateEmail(email),
                      ),
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
                                    .copyWith(color: AppColors.accent),
                              ),
                            ),
                          ],
                        ),
                      ),
                      PasswordField(passwordController: _passwordController),
                      SizedBox(height: 14),
                      Container(
                        padding: EdgeInsetsDirectional.symmetric(
                          vertical: 4,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20),
                          gradient: AppColors.greenGradient,
                        ),
                        child: GradientButton(
                          loading: _isLoading,
                          iconData: Icons.arrow_forward,
                          label: 'تسجيل الدخول والمتابعة',
                          onPressed: handleLogin,
                        ),
                      ),
                    ],
                  ),
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
                              .copyWith(color: AppColors.dark),
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
                              .copyWith(color: AppColors.dark),
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
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => SignupScreen(),
                          ),
                        );
                      },
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
