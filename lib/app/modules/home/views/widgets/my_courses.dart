import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_skeleton/config/theme/my_theme.dart';

import '../../../../components/config/config.dart';
import '../../../../components/widget/Custom_text.dart';
import '../../../../components/widget/Custom_textButton.dart';
import 'atom/course_home_item.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomText(
                text: 'My Courses',
                fontType: FontType.bodyLarge,
                weight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextButton(
                text: 'View All',
                colorText: MyTheme.theme.primaryColor,
                onPressed: () {},
                fontType: FontType.titleSmall,
              ),
            ),
          ],
        ),
        // ----------------------- My Courses item ----------------------- //
        ListView.builder(
          itemCount: 3,
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return CourseHomeItem();
          },
        )
      ],
    );
  }
}
