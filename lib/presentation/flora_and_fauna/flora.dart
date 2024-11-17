import 'package:wbbb_user/presentation/flora_and_fauna/detail_page.dart';

import '../../core/app_export.dart';

class FloraGrid extends StatelessWidget {
  final String? searchText;
  final List<Map<String, String>> floraData = [
    {
      'title': 'Teak',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Nilambur_Teak_Plantation_0666.jpg/440px-Nilambur_Teak_Plantation_0666.jpg'
    },
    {
      'title': 'Thorny bushes',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Nilambur_Teak_Plantation_0666.jpg/440px-Nilambur_Teak_Plantation_0666.jpg'
    },
    {
      'title': 'Mangrove',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Nilambur_Teak_Plantation_0666.jpg/440px-Nilambur_Teak_Plantation_0666.jpg'
    },
    {
      'title': 'Casuarina',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Nilambur_Teak_Plantation_0666.jpg/440px-Nilambur_Teak_Plantation_0666.jpg'
    },
    {
      'title': 'Conifers',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Nilambur_Teak_Plantation_0666.jpg/440px-Nilambur_Teak_Plantation_0666.jpg'
    },
    {
      'title': 'Lotus',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Nilambur_Teak_Plantation_0666.jpg/440px-Nilambur_Teak_Plantation_0666.jpg'
    },
    {
      'title': 'Lotus',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Nilambur_Teak_Plantation_0666.jpg/440px-Nilambur_Teak_Plantation_0666.jpg'
    },
  ];

  FloraGrid({super.key, this.searchText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        itemCount: floraData.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
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
                        image: NetworkImage(floraData[index]['image']!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(floraData[index]['title']!,
                    style: CustomTextStyle.titleMedium()),
              ],
            ),
          );
        },
      ),
    );
  }
}
