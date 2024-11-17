import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/presentation/flora_and_fauna/flora_and_fauna.dart';
import 'package:wbbb_user/presentation/home_page/widgets/custom_bmc_pbr.dart';
import 'package:wbbb_user/presentation/home_page/widgets/custom_drawer.dart';
import 'package:wbbb_user/presentation/home_page/widgets/custom_flora_fauna.dart';
import 'package:wbbb_user/presentation/home_page/widgets/custom_heritage_sites.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;

  final List<String> images = [
    'https://cdn.pixabay.com/photo/2020/06/15/18/23/geese-5302924_1280.jpg',
    'https://cdn.pixabay.com/photo/2024/08/18/13/39/bird-8978033_1280.jpg',
    'https://cdn.pixabay.com/photo/2017/07/24/19/57/tiger-2535888_1280.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundRegular,
      drawer: const CustomDrawer(),
      appBar: AppBar(
        backgroundColor: AppColors.surfaceRegular,
        title: Text(
          "Home",
          style: CustomTextStyle.titleMedium(),
        ),
        leading: Builder(
          builder: (context) => GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer(); // Access Scaffold's drawer
            },
            child: Container(
              margin: const EdgeInsets.only(left: 14, top: 8, bottom: 8),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: AppColors.backgroundLight,
                borderRadius: BorderRadius.circular(30),
              ),
              child: SvgPicture.asset(
                "assets/icons/svg/hamburger.svg",
                width: 24,
                height: 24,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, index, realIndex) {
              final imageUrl = images[index];
              return ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              );
            },
            options: CarouselOptions(
              height: 160,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 1,
              aspectRatio: 16 / 9,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
          ),
          const SizedBox(height: 4),
          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: images.length,
              effect: const WormEffect(
                  dotHeight: 4,
                  dotWidth: 12,
                  activeDotColor: AppColors.primaryRegular,
                  dotColor: AppColors.surfaceRegular,
                  type: WormType.thin),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Heritage sites",
                style: CustomTextStyle.titleMedium(),
              ),
              const Spacer(),
              Text(
                "View all >",
                style:
                    CustomTextStyle.labelLarge(color: AppColors.primaryRegular),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CustomHeritageSites(
                    image:
                        'https://cdn.pixabay.com/photo/2018/09/12/19/21/deer-3673017_1280.jpg',
                    title: 'Sunderban National Park',
                  ),
                  CustomHeritageSites(
                    image:
                        'https://cdn.pixabay.com/photo/2013/10/18/21/37/darjeeling-197611_1280.jpg',
                    title: 'Darjeeling Himalayan Railway',
                  ),
                  CustomHeritageSites(
                    image:
                        'https://www.shutterstock.com/image-photo/beautiful-view-rasmancha-famous-terracotta-600nw-1790874611.jpg',
                    title: 'Bishnupur Temple',
                  ),
                  CustomHeritageSites(
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEsUlESjG8GOKzGzboWE1esLFhUxl-Uopzmw&s',
                    title: 'Neora Valley National Park',
                  ),
                  CustomHeritageSites(
                    image:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKH3XmMg4gUoCXsr_teif09D9O07itzGwO1Q&s',
                    title: 'Shantiniketan',
                  ),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                "Protected Flora & Fauna",
                style: CustomTextStyle.titleMedium(),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Get.to(() => const FloraAndFauna());
                },
                child: Text(
                  "View all >",
                  style: CustomTextStyle.labelLarge(
                      color: AppColors.primaryRegular),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 196,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CustomFloraAndFauna(
                    image:
                        'https://cdn.pixabay.com/photo/2023/05/23/15/42/bengal-tiger-8013012_1280.jpg',
                    title: 'Bengal Tiger',
                  ),
                  CustomFloraAndFauna(
                    image:
                        'https://cdn.pixabay.com/photo/2020/09/13/15/48/turtle-5568624_1280.jpg',
                    title: 'Olive Ridely Marine Turtle',
                  ),
                  CustomFloraAndFauna(
                    image:
                        'https://cdn.pixabay.com/photo/2017/01/29/17/36/oak-tree-2018822_1280.jpg',
                    title: 'Teak Tree',
                  ),
                  CustomFloraAndFauna(
                    image:
                        'https://cdn.pixabay.com/photo/2022/08/29/22/47/thuja-7419938_1280.jpg',
                    title: 'Throny Bushes',
                  ),
                  CustomFloraAndFauna(
                    image:
                        'https://cdn.pixabay.com/photo/2020/05/02/12/38/mangrove-5121263_1280.jpg',
                    title: 'Mangrove',
                  ),
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "BMC & PBR",
                    style: CustomTextStyle.titleMedium(),
                  ),
                  Text(
                    "Biodiversity Management Committee\n& People's Biodiversity Register",
                    style: CustomTextStyle.bodySmall(),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                "View all >",
                style:
                    CustomTextStyle.labelLarge(color: AppColors.primaryRegular),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
              height: 104,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CustomBmcAndPbr(
                    title: 'Lorem Ipsum',
                    description:
                        "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
                  ),
                  CustomBmcAndPbr(
                    title: 'Lorem Ipsum',
                    description:
                        "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
                  ),
                  CustomBmcAndPbr(
                    title: 'Lorem Ipsum',
                    description:
                        "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
                  ),
                  CustomBmcAndPbr(
                    title: 'Lorem Ipsum',
                    description:
                        "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
                  ),
                ],
              )),
          SizedBox(
            height: Get.height * 0.1,
          ),
        ],
      ),
    );
  }
}
