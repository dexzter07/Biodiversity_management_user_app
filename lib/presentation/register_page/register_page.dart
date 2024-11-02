import 'package:flutter/gestures.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/presentation/register_page/controller/register_controller.dart';
import 'package:wbbb_user/presentation/register_page/register_otp_page.dart';
import 'package:wbbb_user/widgets/custom_button_widget.dart';

import '../../core/app_export.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final RegisterController _registerController = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundRegular,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundRegular,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
              margin: const EdgeInsets.only(left: 14, top: 8, bottom: 8),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: AppColors.backgroundLight,
                  borderRadius: BorderRadius.circular(30)),
              child: SvgPicture.asset(
                "assets/icons/svg/arrow-left.svg",
                width: 24,
                height: 24,
              )),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              "Register",
              style: CustomTextStyle.headlineLarge(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: AppColors.textPrimary),
              ),
              child: TextFormField(
                style: CustomTextStyle.bodyMedium(),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Full name',
                  labelStyle: CustomTextStyle.labelLarge(
                      color: AppColors.textSecondary),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: AppColors.textPrimary),
              ),
              child: TextFormField(
                style: CustomTextStyle.bodyMedium(),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Email (optional)',
                  labelStyle: CustomTextStyle.labelLarge(
                      color: AppColors.textSecondary),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
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
                        labelStyle: CustomTextStyle.labelLarge(
                            color: AppColors.textSecondary),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                  width: 25,
                  child: Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    activeColor: AppColors.primaryRegular,
                    value: _registerController.checkBoxClicked.value,
                    onChanged: (val) {
                      setState(() {
                        if (_registerController.checkBoxClicked.value) {
                          _registerController.checkBoxClicked.value = false;
                        } else {
                          _registerController.checkBoxClicked.value = true;
                        }
                      });
                    },
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: "I agree to ",
                      style: CustomTextStyle.labelLarge(
                          color: AppColors.textSecondary),
                      children: [
                        TextSpan(
                          text: "Terms and Conditions",
                          style: CustomTextStyle.labelLarge(
                              color: AppColors.primaryRegular),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Terms and Conditions tapped");
                            },
                        ),
                        TextSpan(
                          text: " and ",
                          style: CustomTextStyle.labelLarge(
                              color: AppColors.textSecondary),
                        ),
                        TextSpan(
                          text: "Privacy Policies",
                          style: CustomTextStyle.labelLarge(
                              color: AppColors.primaryRegular),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("Privacy Policies tapped");
                            },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButtonWidget(
                text: "Continue",
                function: () {
                  Get.to(() => const RegisterOtpPage());
                })
          ],
        ),
      ),
    );
  }
}
