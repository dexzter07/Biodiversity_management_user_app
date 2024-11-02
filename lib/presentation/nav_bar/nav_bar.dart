import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/presentation/feedbacks/feedbacks.dart';
import 'package:wbbb_user/presentation/home_page/home_page.dart';
import 'package:wbbb_user/presentation/publications/publications.dart';

import '../notifications/notifications.dart';

class NavScreenBar extends StatefulWidget {
  int currentIndex = 0;
  NavScreenBar({super.key, required this.currentIndex});

  @override
  State<NavScreenBar> createState() => _NavScreenBarState();
}

class _NavScreenBarState extends State<NavScreenBar>
    with TickerProviderStateMixin {
  void changePage(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      const HomePage(),
      const Publications(),
      const Feedbacks(),
      const Notifications(),
    ];
    return Scaffold(
      backgroundColor: AppColors.backgroundRegular,
      extendBody: true,
      body: pages[widget.currentIndex],
      bottomNavigationBar: SizedBox(
        height: Get.height * 0.09,
        child: Card(
          elevation: 10,
          margin: EdgeInsets.zero,
          child: DotNavigationBar(
            itemPadding: const EdgeInsets.symmetric(horizontal: 19),
            dotIndicatorColor: Colors.transparent,
            backgroundColor: Colors.white,
            currentIndex: widget.currentIndex,
            onTap: changePage,
            selectedItemColor: AppColors.primaryRegular,
            splashBorderRadius: 10,
            borderRadius: 0,
            enableFloatingNavBar: false,
            items: [
              DotNavigationBarItem(
                  icon: Column(
                children: [
                  SvgPicture.asset(
                    "assets/icons/svg/home.svg",
                    width: 24,
                    height: 24,
                    color: widget.currentIndex == 0
                        ? AppColors.primaryRegular
                        : AppColors.onSurfaceRegular,
                  ),
                  Text(
                    "Home",
                    style: CustomTextStyle.labelSmall(
                        fontSize: 10,
                        color: widget.currentIndex == 0
                            ? AppColors.primaryRegular
                            : AppColors.textSecondary),
                  )
                ],
              )),
              DotNavigationBarItem(
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/svg/publications.svg",
                      width: 24,
                      height: 24,
                      color: widget.currentIndex == 1
                          ? AppColors.primaryRegular
                          : AppColors.onSurfaceRegular,
                    ),
                    Text(
                      "Publications",
                      style: CustomTextStyle.labelSmall(
                          fontSize: 10,
                          color: widget.currentIndex == 1
                              ? AppColors.primaryRegular
                              : AppColors.textSecondary),
                    )
                  ],
                ),
              ),
              DotNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/svg/feedbacks.svg",
                        width: 24,
                        height: 24,
                        color: widget.currentIndex == 2
                            ? AppColors.primaryRegular
                            : AppColors.onSurfaceRegular,
                      ),
                      Text(
                        "Feedbacks",
                        style: CustomTextStyle.labelSmall(
                            fontSize: 10,
                            color: widget.currentIndex == 2
                                ? AppColors.primaryRegular
                                : AppColors.textSecondary),
                      )
                    ],
                  ),
                ),
              ),
              DotNavigationBarItem(
                  icon: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/svg/notifications.svg",
                      width: 24,
                      height: 24,
                      color: widget.currentIndex == 3
                          ? AppColors.primaryRegular
                          : AppColors.onSurfaceRegular,
                    ),
                    Text(
                      "Notifications",
                      style: CustomTextStyle.labelSmall(
                          fontSize: 10,
                          color: widget.currentIndex == 3
                              ? AppColors.primaryRegular
                              : AppColors.textSecondary),
                    )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
