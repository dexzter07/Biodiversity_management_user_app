import 'package:wbbb_user/core/app_export.dart';

class CustomHeritageSites extends StatelessWidget {
  final String image;
  final String title;
  const CustomHeritageSites(
      {super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      width: 100,
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                image,
                width: 100,
                height: 96,
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
    );
  }
}
