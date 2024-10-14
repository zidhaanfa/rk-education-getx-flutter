import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../config/theme/my_theme.dart';
import '../../../../components/config/config.dart';
import '../../../../components/widget/Custom_elevatedButton.dart';
import '../../../../components/widget/Custom_text2.dart';

class CardNewCourse extends StatelessWidget {
  const CardNewCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Card(
        color: MyTheme.theme.colorScheme.primary,
        child: Stack(
          children: [
            //----------------white circles decor----------------//
            Positioned(
              right: 0,
              top: -125.h,
              child: CircleAvatar(
                backgroundColor:
                    MyTheme.theme.secondaryHeaderColor.withOpacity(0.05),
                radius: 111,
              ),
            ),
            Positioned(
              right: -7.w,
              top: -130.h,
              child: CircleAvatar(
                backgroundColor:
                    MyTheme.theme.secondaryHeaderColor.withOpacity(0.5),
                radius: 111,
              ),
            ),
            Positioned(
              right: -21.w,
              top: -185.h,
              child: CircleAvatar(
                backgroundColor:
                    MyTheme.theme.secondaryHeaderColor.withOpacity(0.4),
                radius: 111,
              ),
            ),

            Positioned(
              left: -21.w,
              bottom: -195.h,
              child: CircleAvatar(
                backgroundColor:
                    MyTheme.theme.secondaryHeaderColor.withOpacity(0.3),
                radius: 111,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  5.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Get.width / 2,
                        child: Column(
                          children: [
                            CustomText2(
                              text: 'New Course',
                              fontType: FontType.titleLarge,
                              weight: FontWeight.bold,
                              colorText: MyTheme.theme.colorScheme.onPrimary,
                            ),
                            5.verticalSpace,
                            CustomText2(
                              text: 'User Experience Class',
                              fontType: FontType.bodyMedium,
                              // weight: FontWeight.bold,
                              colorText: MyTheme.theme.colorScheme.onPrimary,
                            ),
                            5.verticalSpace,
                            CustomElevatedButton(
                              onPressed: () {},
                              name: 'View',
                              height: 40,
                              width: 100,
                              fontType: FontType.bodySmall,
                              colorText: MyTheme
                                  .theme.buttonTheme.colorScheme!.onSecondary,
                              color: MyTheme.theme.colorScheme.secondary,
                              isText: true,
                            ),
                          ],
                        ),
                      ),
                      // ----------------------- Single Image ----------------------- //
                      Container(
                        height: 0.1.sh,
                        width: 0.3.sw,
                        child: Image.asset(
                          'assets/images/person1.png',
                          height: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
