import 'package:bareeq/core/theme/app_colors.dart';
import 'package:bareeq/core/theme/app_decoration.dart';
import 'package:bareeq/core/utils/validators.dart';
import 'package:bareeq/core/widgets/gradient_button.dart';
import 'package:bareeq/core/widgets/password_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});
  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;
  late TextEditingController _fullNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _passwordController;
  @override
  void initState() {
    _passwordController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _fullNameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _fullNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.maybePop(context);
              },
              child: Container(
                padding: EdgeInsetsDirectional.all(6),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.borderColor, width: 2),
                ),
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: AppColors.dark,
                ),
              ),
            ),
            Container(
              padding: EdgeInsetsDirectional.symmetric(
                vertical: 2,
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(24),
                color: AppColors.accentLight,
              ),
              child: Text(
                'هدية 500 نقطة ولاء عند التسجيل 🎁',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(
            vertical: 24,
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'انضم إلى عائلة بَريق ✨',
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge!.copyWith(color: AppColors.primary),
              ),
              const SizedBox(height: 4),
              Text(
                'أنشئ حسابك في ثوانٍ واستمتع بتجربة تسوق فاخرة وعروض حصرية.',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: AppColors.muted,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 24),
              Container(
                padding: EdgeInsetsDirectional.symmetric(
                  vertical: 24,
                  horizontal: 16,
                ),
                decoration: AppDecoration.containerDecoration,
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'الاسم الكامل',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      SizedBox(height: 4),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hint: Text(
                            'name@example.com',
                            style: TextStyle(color: AppColors.muted),
                          ),
                        ),
                        controller: _fullNameController,
                        validator: (fullName) => validateFullName(fullName),
                      ),
                      SizedBox(height: 8),
                      Text('البريد الإلكتروني'),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hint: Text(
                            'name@example.com',
                            style: TextStyle(color: AppColors.muted),
                          ),
                        ),
                        controller: _emailController,
                        validator: (email) => validateEmail(email),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'رقم الجوال',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: _phoneController,
                        validator: (phone) => validatePhone(phone),
                        decoration: InputDecoration(
                          hint: Directionality(
                            textDirection: TextDirection.ltr,
                            child: Text(
                              '+966 5X XXX XXXX',
                              style: TextStyle(color: AppColors.muted),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'كلمة المرور',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      PasswordField(
                        passwordController: _passwordController,
                        hintText: Text(
                          '8 خانات على الأقل ',
                          style: TextStyle(color: AppColors.muted),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              setState(() {
                                isChecked = !isChecked;
                              });
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(6),
                            ),
                          ),
                          SizedBox(width: 4),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: ' أوافق على',
                                  style: Theme.of(context).textTheme.bodySmall!
                                      .copyWith(
                                        color: AppColors.muted,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: 'الشروط والأحكام',
                                  style: Theme.of(context).textTheme.bodyMedium!
                                      .copyWith(color: AppColors.primaryLight),
                                ),
                                TextSpan(
                                  text: ' وسياسة الخصوصية.',
                                  style: Theme.of(context).textTheme.bodySmall!
                                      .copyWith(
                                        color: AppColors.muted,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      GradientButton(
                        label: 'إنشاء الحساب والبدء بالتسوق',
                        onPressed: isChecked ? () {} : () {},
                        gradient: AppColors.goldGradient,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: ' لديك حساب بالفعل؟',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.muted,
                        ),
                      ),
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.pop();
                          },
                        text: 'تسجيل الدخول',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.primaryLight,
                          decoration: TextDecoration.underline,
                          decorationColor: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
