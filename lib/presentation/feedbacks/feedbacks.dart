import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/presentation/feedbacks/feedback_form.dart';
import 'package:wbbb_user/presentation/feedbacks/widgets/feedback_component.dart';

class Feedbacks extends StatelessWidget {
  const Feedbacks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundRegular,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: Get.height * 0.1),
        child: FloatingActionButton(
          elevation: 0.5,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          backgroundColor: AppColors.primaryRegular,
          tooltip: 'Add Feedback',
          onPressed: () {
            Get.to(() => FeedbackForm());
          },
          child: const Icon(Icons.add, color: Colors.white, size: 28),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColors.surfaceRegular,
        title: Text(
          "Feedbacks",
          style: CustomTextStyle.titleMedium(),
        ),
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
                "assets/icons/svg/hamburger.svg",
                width: 24,
                height: 24,
              )),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        children: const [
          FeedbackComponent(),
          SizedBox(
            height: 20,
          ),
          FeedbackComponent(),
        ],
      ),
    );
  }
}
