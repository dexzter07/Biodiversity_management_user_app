import 'package:flutter/material.dart';
import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/theme/custom_textstyle.dart';

class FeedbackComponent extends StatelessWidget {
  const FeedbackComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.surfaceRegular,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "26 Apr, 2025",
                style: CustomTextStyle.labelMedium(),
              ),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                    color: AppColors.primaryRegular,
                    borderRadius: BorderRadius.circular(8)),
                child: Text(
                  "In Progress",
                  style: CustomTextStyle.bodySmall(
                      color: AppColors.primaryOnPrimary),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Waste Management",
            style: CustomTextStyle.titleSmall(),
          ),
          Text(
            "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. asdfasdfadf asdfa",
            style: CustomTextStyle.bodySmall(),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPdib91xLvbxeLaukf4kgq5ZFtKobUYq8VQA&s",
                  height: 80,
                  width: 56,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPdib91xLvbxeLaukf4kgq5ZFtKobUYq8VQA&s",
                  height: 80,
                  width: 56,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPdib91xLvbxeLaukf4kgq5ZFtKobUYq8VQA&s",
                  height: 80,
                  width: 56,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPdib91xLvbxeLaukf4kgq5ZFtKobUYq8VQA&s",
                  height: 80,
                  width: 56,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPdib91xLvbxeLaukf4kgq5ZFtKobUYq8VQA&s",
                  height: 80,
                  width: 56,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
