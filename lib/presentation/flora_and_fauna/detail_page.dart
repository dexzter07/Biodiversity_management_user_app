import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wbbb_user/core/app_export.dart';

class FloraFaunaDetailPage extends StatelessWidget {
  const FloraFaunaDetailPage({super.key});

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
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzsxMRiCRK5Bjvwkr-REfra5rzY6VY07tjbBX8sKRRjhXIWK4yW8tNVm5cgkHh1gTM6ho&usqp=CAU",
              width: 343,
              height: 240,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Bengal Tiger",
            style: CustomTextStyle.headlineSmall(),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "The Bengal tiger is a population of the Panthera tigris tigris subspecies and the nominate tiger subspecies. It ranks among the biggest wild cats alive today. It is estimated to have been present in the Indian subcontinent since the Late Pleistocene for about 12,000 to 16,500 years. Its historical range covered the Indus River valley until the early 19th century, almost all of India, western Pakistan, southern Nepal, Bangladesh, Bhutan and southwestern China. Today, it inhabits India, Bangladesh, Nepal, Bhutan, and southwestern China. It is threatened by poaching, habitat loss and habitat fragmentation.",
            style: CustomTextStyle.bodyMedium(color: AppColors.textSecondary),
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
