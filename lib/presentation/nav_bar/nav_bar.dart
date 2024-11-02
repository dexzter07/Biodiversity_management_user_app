import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wbbb_user/core/app_export.dart';

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
    final pages = [];
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
                    width: 18,
                    height: 18,
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
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/expenses_nav.png",
                        width: 18,
                        height: 18,
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
                  ),
                ),
              ),
              DotNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/icons/Create.png",
                        width: 17,
                        height: 17,
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
                  ),
                ),
              ),
              DotNavigationBarItem(
                  icon: Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/icons/profile.png",
                      width: 17,
                      height: 17,
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
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
