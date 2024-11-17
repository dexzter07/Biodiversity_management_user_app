import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/presentation/flora_and_fauna/detail_page.dart';

class CustomFloraAndFauna extends StatelessWidget {
  final String image;
  final String title;
  const CustomFloraAndFauna(
      {super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const FloraFaunaDetailPage());
      },
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        width: 130,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  image,
                  width: 130,
                  height: 144,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: CustomTextStyle.titleSmall(),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            )
          ],
        ),
      ),
    );
  }
}
