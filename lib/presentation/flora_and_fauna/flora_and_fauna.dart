import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        backgroundColor: AppColors.backgroundRegular,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppColors.surfaceRegular,
              floating: true,
              pinned: true,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              title: Text("Protected", style: CustomTextStyle.titleMedium()),
              centerTitle: true,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(120),
                child: Column(
                  children: [
                    // CupertinoSearchTextField
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 10,
                      ),
                      child: SizedBox(
                        height: 47,
                        width: Get.width,
                        child: Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 47,
                                child: CupertinoSearchTextField(
                                  padding: const EdgeInsets.all(8),
                                  prefixInsets: const EdgeInsets.only(left: 12),
                                  placeholder: "Search flora or fauna",
                                  onChanged: (value) {
                                    setState(() {
                                      searchText =
                                          value; // Update search text dynamically
                                    });
                                  },
                                  backgroundColor: AppColors.surfaceDark,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(Icons.tune)
                          ],
                        ),
                      ),
                    ),
                    // TabBar
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      child: TabBar(
                        labelColor: AppColors.primaryOnPrimary,
                        unselectedLabelColor: AppColors.textSecondary,
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerHeight: 0,
                        indicator: BoxDecoration(
                          color: AppColors.primaryRegular,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        tabs: const [
                          Tab(
                            icon: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.eco),
                                SizedBox(width: 10),
                                Text("Flora", style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                          Tab(
                            icon: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.pets),
                                SizedBox(width: 10),
                                Text("Fauna", style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Sliver body with TabBarView
            SliverFillRemaining(
              child: TabBarView(
                children: [
                  FloraGrid(searchText: searchText),
                  FaunaGrid(searchText: searchText),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
