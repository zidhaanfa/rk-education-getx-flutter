import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../components/widget/Custom_appBar.dart';
import '../../../components/widget/Custom_carousel.dart';
import '../controllers/home_controller.dart';
import 'widgets/card_new_course.dart';
import 'widgets/my_courses.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'Hello, User',
            subTitle: 'What do you want to learn?',
            trailingIcon: CupertinoIcons.bell_fill,
            onTrailingTap: () {},
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  10.verticalSpace,

                  // ----------------------- Carousel ----------------------- //
                  CustomCarousel(
                    selectedIndex: homeController.selectedIndexInfinite.value,
                    data: homeController.kDemoImages,
                    height: 120,
                    itemWidth: MediaQuery.of(Get.context!).size.width / 1.005,
                  ),
                  10.verticalSpace,

                  // ----------------------- New Course ----------------------- //
                  CardNewCourse(),
                  10.verticalSpace,

                  // ----------------------- My Courses ----------------------- //
                  MyCourses(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
