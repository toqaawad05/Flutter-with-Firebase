import 'package:flutter/material.dart';
import '../../../../core/styles/app_colors.dart';
import '../../../../core/styles/app_strings.dart';
import '../widgets/forget_password_row.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(AppStrings.loginScreenWelcomeText),
        const SizedBox(height: 50),

        // Email or phone input
        const TextField(
          decoration: InputDecoration(
            labelText: 'Email or Phone',
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),

        // Password input
        TextField(
          decoration: InputDecoration(
            fillColor: AppColors.whiteApp,
            filled: true,
            labelText: AppStrings.loginScreenPhonenumberTextFiled,
            border: const OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 20),

        // Forget Password Link
        const ForgetPasswordRow(firstWhiteText: 'هل نسيت كلمة المرور؟'),

        const SizedBox(height: 20),

        // Login Button
        ElevatedButton(
          onPressed: () {},
          child: const Text('تسجيل الدخول'),
        ),

        const SizedBox(height: 15),

        // Create Account Row
        const ForgetPasswordRow(
          firstWhiteText: 'إنشاء حساب',
          secoednBlcakText: 'ليس لديك حساب؟',
        ),
      ],
    );
  }
}
