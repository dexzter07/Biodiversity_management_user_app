import 'package:wbbb_user/core/app_export.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;

  final void Function() function;
  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.function,
    this.textColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.0,
      width: Get.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: backgroundColor ?? AppColors.primaryRegular),
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Text(
          text,
          style: CustomTextStyle.labelLarge(
              color: textColor ?? AppColors.primaryOnPrimary),
        ),
      ),
    );
  }
}
