import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/widgets/custom_button_widget.dart';

class FeedbackForm extends StatelessWidget {
  FeedbackForm({super.key});

  final List<String> categories = [
    'App feedback',
    'Pollution',
    'Waste management',
    'Heritage sites',
    'Flora & Fauna'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundRegular,
      appBar: AppBar(
        backgroundColor: AppColors.surfaceRegular,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Add feedback',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.surfaceRegular,
                labelText: 'Category',
                labelStyle:
                    CustomTextStyle.labelLarge(color: AppColors.textSecondary),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: AppColors.primaryRegular),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: AppColors.borderRegular),
                ),
              ),
              dropdownColor: Colors.white,
              value: categories[0],
              items: categories
                  .map((category) => DropdownMenuItem<String>(
                        value: category,
                        child:
                            Text(category, style: CustomTextStyle.labelLarge()),
                      ))
                  .toList(),
              onChanged: (value) {},
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.surfaceRegular,
                labelText: 'Feedback',
                labelStyle:
                    CustomTextStyle.labelLarge(color: AppColors.textSecondary),
                border: const OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: AppColors.primaryRegular),
                ),
              ),
              maxLines: 4,
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.surfaceRegular,
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.image, color: AppColors.onSurfaceRegular),
                  const SizedBox(height: 8),
                  Text(
                    'Add images',
                    style: CustomTextStyle.labelMedium(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButtonWidget(text: "Submit", function: () {})
          ],
        ),
      ),
    );
  }
}
