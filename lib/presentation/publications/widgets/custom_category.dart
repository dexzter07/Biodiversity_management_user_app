import 'package:wbbb_user/core/app_export.dart';

class CustomCategory extends StatelessWidget {
  final Color backgroundColor;
  final String label;
  final Color? borderColor;
  final Color? textColor;

  const CustomCategory({
    super.key,
    required this.backgroundColor,
    required this.label,
    this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: borderColor ?? AppColors.borderRegular),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: CustomTextStyle.labelLarge(
          color: textColor ?? AppColors.textSecondary,
        ),
      ),
    );
  }
}
