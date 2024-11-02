import 'package:flutter/material.dart';
import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/core/utils/image_constant.dart';
import 'package:wbbb_user/theme/custom_textstyle.dart';
import 'package:wbbb_user/widgets/custom_button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              ImageConstant.splashImage,
              width: 80,
              height: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Login",
              style: CustomTextStyle.headlineLarge(),
            ),
            Text(
              "Enter your mobile number to login",
              style: CustomTextStyle.bodyMedium(),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: AppColors.textPrimary),
                ),
                child: Row(
                  children: [
                    Text(
                      '+91',
                      style: CustomTextStyle.labelLarge(),
                    ),
                    const SizedBox(width: 8.0),
                    Container(
                      height: 40,
                      width: 1,
                      decoration:
                          const BoxDecoration(color: AppColors.seperatorLight),
                    ),
                    const SizedBox(width: 8.0),
                    Expanded(
                      child: TextFormField(
                        style: CustomTextStyle.bodyMedium(),
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          labelText: 'Mobile number',
                          labelStyle: CustomTextStyle.labelLarge(),
                          border: InputBorder.none,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonWidget(text: "Continue", function: () {}),
            SizedBox(
              height: Get.height * 0.04,
            ),
            Center(
              child: Text(
                "Don’t have an account?",
                style: CustomTextStyle.bodyMedium(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Register now",
                style: CustomTextStyle.labelLarge(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
