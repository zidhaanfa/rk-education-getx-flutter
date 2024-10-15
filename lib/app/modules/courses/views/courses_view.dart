import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../components/widget/Custom_appBar.dart';
import '../controllers/courses_controller.dart';
import 'widgets/courses_item.dart';

class CoursesView extends GetView<CoursesController> {
  const CoursesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'Best Courses',
            subTitle: 'Learn now and get a better future',
            trailingIcon: FontAwesomeIcons.clockRotateLeft,
            onTrailingTap: () {},
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  10.verticalSpace,
                  // ----------------------- Courses ----------------------- //
                  ListView.builder(
                    itemCount: 3,
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CoursesItem();
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
