import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/presentation/flora_and_fauna/fauna.dart';
import 'package:wbbb_user/presentation/flora_and_fauna/flora.dart';
import 'package:wbbb_user/theme/custom_textstyle.dart';

class FloraAndFauna extends StatefulWidget {
  const FloraAndFauna({super.key});

  @override
  State<FloraAndFauna> createState() => _FloraAndFaunaState();
}

class _FloraAndFaunaState extends State<FloraAndFauna> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: AppColors.backgroundRegular,
        appBar: AppBar(
          backgroundColor: AppColors.surfaceRegular,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Get.back();
            },
          ),
          title: const Text(
            "Protected",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          bottom: TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            labelColor: AppColors.primaryOnPrimary,
            unselectedLabelColor: AppColors.textSecondary,
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              color: AppColors.primaryRegular,
              borderRadius: BorderRadius.circular(30),
            ),
            dividerHeight: 0,
            tabs: const [
              Tab(
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.eco),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Flora",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              Tab(
                icon: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.pets),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Flora",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: TabBarView(
            children: [FloraGrid(), FaunaGrid()],
          ),
        ),
      ),
    );
  }
}
