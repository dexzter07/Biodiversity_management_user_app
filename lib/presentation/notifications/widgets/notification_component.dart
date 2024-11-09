import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/theme/custom_textstyle.dart';

class NotificationComponent extends StatelessWidget {
  const NotificationComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.surfaceRegular,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                          'Notice regarding waste management for festive season.',
                          style: CustomTextStyle.titleSmall(
                              color: AppColors.primaryRegular)),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                    'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet',
                    style: CustomTextStyle.bodySmall(
                        color: AppColors.textSecondary)),
                const SizedBox(height: 8),
                Text('26 Apr, 2025',
                    style: CustomTextStyle.labelSmall(
                        color: AppColors.textSecondary)),
              ],
            ),
          ),
          const SizedBox(width: 12),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1toz_0nSUAvalOOh8nqtIOwxOGDxP9aGq0w&s',
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
