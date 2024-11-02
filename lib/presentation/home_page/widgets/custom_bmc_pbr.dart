import 'package:wbbb_user/core/app_export.dart';

class CustomBmcAndPbr extends StatelessWidget {
  final String title;
  final String description;
  const CustomBmcAndPbr(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.surfaceRegular,
          borderRadius: BorderRadius.circular(8)),
      width: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: CustomTextStyle.titleSmall(),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            description,
            style: CustomTextStyle.bodyMedium(color: AppColors.textSecondary),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
