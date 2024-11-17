import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/core/app_export.dart';

class CustomPastActivities extends StatelessWidget {
  const CustomPastActivities({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: AppColors.surfaceRegular,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "https://images.unsplash.com/photo-1534841515798-3d43f5434123?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              height: 160,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Biodiversity Conservation Summit",
            style: CustomTextStyle.titleSmall(),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            "Join us for a summit focused on preserving and protecting biodiversity in West Bengal.",
            style: CustomTextStyle.bodySmall(color: AppColors.textSecondary),
            maxLines: 2,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset("assets/icons/svg/calendar.svg"),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Nov 15th, 2022, 9:00 AM - 5:00 PM",
                style:
                    CustomTextStyle.labelMedium(color: AppColors.textSecondary),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              SvgPicture.asset("assets/icons/svg/map.svg"),
              const SizedBox(
                width: 10,
              ),
              Text(
                "West Bengal Biodiversity Park, Kolkata",
                style:
                    CustomTextStyle.labelMedium(color: AppColors.textSecondary),
              )
            ],
          )
        ],
      ),
    );
  }
}
