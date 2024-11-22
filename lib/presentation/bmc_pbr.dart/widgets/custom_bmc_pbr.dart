import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/theme/custom_textstyle.dart';

class CustomBmcPbr extends StatelessWidget {
  const CustomBmcPbr({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.surfaceRegular,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lorem Ipsum Dolar Sit Amet",
            style: CustomTextStyle.titleSmall(),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
              "Donec sed erat ut magna suscipit mattis. Donec sed erat ut magna suscipit mattis.",
              style: CustomTextStyle.bodyMedium(
                color: AppColors.textSecondary,
              ))
        ],
      ),
    );
  }
}
