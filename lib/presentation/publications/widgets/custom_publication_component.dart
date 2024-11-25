import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/presentation/publications/publication_details.dart';

class CustomPublicationComponent extends StatelessWidget {
  const CustomPublicationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const PublicationDetails());
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: AppColors.surfaceRegular,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.all(4),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                "https://cdn.pixabay.com/photo/2022/04/07/20/12/butterfly-7118219_1280.jpg",
                width: 104,
                height: 104,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;",
                    style: CustomTextStyle.titleSmall(),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas",
                    style: CustomTextStyle.bodySmall(
                        color: AppColors.textSecondary),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "2 Nov, 24",
                    style: CustomTextStyle.labelMedium(
                        color: AppColors.textPrimary),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
