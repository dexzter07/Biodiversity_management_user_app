import 'package:flutter_svg/flutter_svg.dart';
import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/presentation/heritages/widgets/custom_heritage.dart';

class Heritages extends StatelessWidget {
  const Heritages({super.key});

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
          "Heritages",
          style: CustomTextStyle.titleMedium(),
        ),
      ),
      bottomSheet: Container(
        height: 90,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.surfaceRegular),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/svg/map-view.svg"),
            const SizedBox(
              width: 10,
            ),
            Text(
              "Show map view",
              style: CustomTextStyle.labelLarge(),
            )
          ],
        ),
      ),
      body: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
        ),
        children: const [
          CustomHeritage(),
          CustomHeritage(),
          CustomHeritage(),
          CustomHeritage(),
          CustomHeritage(),
        ],
      ),
    );
  }
}
