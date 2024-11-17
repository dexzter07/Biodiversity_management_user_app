import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/widgets/custom_button_widget.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
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
          "Edit Profile",
          style: CustomTextStyle.titleMedium(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        children: [
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
                labelStyle:
                    CustomTextStyle.labelLarge(color: AppColors.textSecondary),
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email Address',
                labelStyle:
                    CustomTextStyle.labelLarge(color: AppColors.textSecondary),
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'Date of Birth',
                  labelStyle: CustomTextStyle.labelLarge(
                      color: AppColors.textSecondary),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 0),
                  suffixIcon: const Icon(Icons.date_range)),
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Address',
                labelStyle:
                    CustomTextStyle.labelLarge(color: AppColors.textSecondary),
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Village/Town/City',
                labelStyle:
                    CustomTextStyle.labelLarge(color: AppColors.textSecondary),
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
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'District',
                labelStyle:
                    CustomTextStyle.labelLarge(color: AppColors.textSecondary),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 0),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          CustomButtonWidget(text: "Save", function: () {})
        ],
      ),
    );
  }
}
