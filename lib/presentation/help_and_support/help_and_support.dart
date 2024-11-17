import 'package:flutter_svg/flutter_svg.dart';
import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/theme/custom_textstyle.dart';
import 'package:wbbb_user/widgets/custom_button_widget.dart';

class HelpAndSupportPage extends StatelessWidget {
  const HelpAndSupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundRegular,
      appBar: AppBar(
        backgroundColor: AppColors.surfaceRegular,
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
        title: Text(
          "Help and Support",
          style: CustomTextStyle.titleMedium(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Contact us", style: CustomTextStyle.titleMedium()),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/svg/phone.svg"),
                        const SizedBox(width: 8),
                        Text("+91-9876543210",
                            style: CustomTextStyle.bodyLarge(
                                color: AppColors.textSecondary)),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        SvgPicture.asset("assets/icons/svg/email.svg"),
                        const SizedBox(width: 8),
                        Text("info@wbbb.gov.in",
                            style: CustomTextStyle.bodyLarge(
                                color: AppColors.textSecondary)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text("Find us on", style: CustomTextStyle.titleMedium()),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildSocialIcon("assets/icons/svg/Facebook.svg"),
                        const SizedBox(width: 12),
                        _buildSocialIcon("assets/icons/svg/Instagram.svg"),
                        const SizedBox(width: 12),
                        _buildSocialIcon("assets/icons/svg/Twitter.svg"),
                        const SizedBox(width: 12),
                        _buildSocialIcon("assets/icons/svg/Whatsapp.svg"),
                        const SizedBox(width: 12),
                        _buildSocialIcon("assets/icons/svg/Linkedin.svg"),
                        const SizedBox(width: 12),
                        _buildSocialIcon("assets/icons/svg/Youtube.svg"),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Text("Send us a message", style: CustomTextStyle.titleMedium()),
              const SizedBox(height: 10),
              _buildTextField("Name"),
              const SizedBox(height: 12),
              _buildTextField("Email"),
              const SizedBox(height: 12),
              _buildTextField("Phone number"),
              const SizedBox(height: 12),
              _buildTextField("Message", maxLines: 4),
              const SizedBox(height: 20),
              CustomButtonWidget(text: "Send", function: () {})
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hintText, {int maxLines = 1}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: AppColors.textPrimary),
      ),
      child: TextFormField(
        style: CustomTextStyle.bodyMedium(),
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle:
              CustomTextStyle.labelLarge(color: AppColors.textSecondary),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
        ),
        maxLines: maxLines,
      ),
    );
  }

  Widget _buildSocialIcon(String assetPath) {
    return SvgPicture.asset(
      assetPath,
      height: 40,
      width: 40,
    );
  }
}
