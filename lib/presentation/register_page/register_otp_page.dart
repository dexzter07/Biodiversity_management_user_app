import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:wbbb_user/presentation/nav_bar/nav_bar.dart';
import 'package:wbbb_user/widgets/custom_button_widget.dart';
import '../../core/app_export.dart';

class RegisterOtpPage extends StatefulWidget {
  const RegisterOtpPage({super.key});

  @override
  State<RegisterOtpPage> createState() => _RegisterOtpPageState();
}

class _RegisterOtpPageState extends State<RegisterOtpPage> {
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
              height: 20,
            ),
            Text(
              "Verify your number",
              style: CustomTextStyle.headlineLarge(),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Enter the code sent to your mobile number",
              style: CustomTextStyle.bodyMedium(),
            ),
            const SizedBox(
              height: 20,
            ),
            PinCodeTextField(
              appContext: context,
              length: 6,
              obscureText: false,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 55,
                fieldWidth: 55,
                activeFillColor: Colors.grey.shade100,
                selectedFillColor: AppColors.surfaceRegular,
                inactiveFillColor: AppColors.surfaceRegular,
                activeColor: AppColors.primaryRegular,
                selectedColor: AppColors.primaryRegular,
                inactiveColor: AppColors.borderRegular,
              ),
              animationDuration: const Duration(milliseconds: 300),
              enableActiveFill: true,
              onCompleted: (value) {
                print("OTP entered: $value");
                // Add your logic here to verify OTP
              },
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButtonWidget(
                text: "Verify",
                function: () {
                  Get.to(() => NavScreenBar(currentIndex: 0));
                }),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Didn't receive the code?",
                  style: CustomTextStyle.bodyMedium(),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Resend",
                  style: CustomTextStyle.labelLarge(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
