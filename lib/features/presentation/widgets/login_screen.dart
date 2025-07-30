import 'package:flutter/material.dart';
import '../../../../core/styles/app_colors.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteApp,
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: LoginScreen(), // بدون const
        ),
      ),
    );
  }
}
