import 'package:wbbb_user/presentation/flora_and_fauna/detail_page.dart';

import '../../core/app_export.dart';

class FaunaGrid extends StatelessWidget {
  final List<Map<String, String>> faunaData = [
    {
      'title': 'Bengal Tiger',
      'image':
          'https://sundarbantours.in/assets/media/sundarban-faunadbe092ed755f8a1518eee0388972b427202006040240.webp'
    },
    {
      'title': 'Bengal Tiger',
      'image':
          'https://sundarbantours.in/assets/media/sundarban-faunadbe092ed755f8a1518eee0388972b427202006040240.webp'
    },
    {
      'title': 'Bengal Tiger',
      'image':
          'https://sundarbantours.in/assets/media/sundarban-faunadbe092ed755f8a1518eee0388972b427202006040240.webp'
    },
    {
      'title': 'Bengal Tiger',
      'image':
          'https://sundarbantours.in/assets/media/sundarban-faunadbe092ed755f8a1518eee0388972b427202006040240.webp'
    },
    {
      'title': 'Bengal Tiger',
      'image':
          'https://sundarbantours.in/assets/media/sundarban-faunadbe092ed755f8a1518eee0388972b427202006040240.webp'
    },
    {
      'title': 'Bengal Tiger',
      'image':
          'https://sundarbantours.in/assets/media/sundarban-faunadbe092ed755f8a1518eee0388972b427202006040240.webp'
    },
  ];

  FaunaGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: faunaData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.to(() => const FloraFaunaDetailPage());
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: NetworkImage(faunaData[index]['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(faunaData[index]['title']!,
                    style: CustomTextStyle.titleMedium()),
              ],
            ),
          );
        },
      ),
    );
  }
}
