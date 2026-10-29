import 'package:bareeq/core/utils/validators.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    required this._passwordController,
    this.hintText = const Text('كلمة المرور'),
  });

  final TextEditingController _passwordController;
  final Widget? hintText;

  @override
  State<PasswordField> createState() {
    return _PasswordFieldState();
  }
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  void dispose() {
    widget._passwordController.dispose();
    super.dispose();
  }

  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: TextInputAction.next,
      validator: (password) => validatePassword(password),
      controller: widget._passwordController,
      decoration: InputDecoration(
        hint: widget.hintText,
        suffixIcon: TextButton.icon(
          label: Text(obsecureText ? 'اظهار' : 'اخفاء'),
          icon: Icon(obsecureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              obsecureText = !obsecureText;
            });
          },
        ),
      ),
      obscureText: obsecureText,
    );
  }
}
