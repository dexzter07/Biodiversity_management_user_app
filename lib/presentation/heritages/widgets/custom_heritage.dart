import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/presentation/heritages/heritage_details.dart';

class CustomHeritage extends StatelessWidget {
  const CustomHeritage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const HeritageDetails());
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
                "https://cdn.pixabay.com/photo/2018/09/12/19/21/deer-3673017_1280.jpg"),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Sunderban National Park",
            style: CustomTextStyle.titleMedium(),
          )
        ],
      ),
    );
  }
}
