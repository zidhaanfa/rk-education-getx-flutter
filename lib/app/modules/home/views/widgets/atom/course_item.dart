import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/theme/my_theme.dart';
import '../../../../../components/config/config.dart';
import '../../../../../components/widget/Custom_text.dart';

class CourseItem extends StatelessWidget {
  const CourseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 12.0,
        left: 12.0,
      ),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
          side: BorderSide(
            color: MyTheme.theme.dividerColor,
            width: 1,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: MyTheme.theme.colorScheme.primary.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8.r),
                  ),
                ),
                child: CustomText(
                  text: '01/30',
                  fontType: FontType.titleSmall,
                  colorText: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/person1.png',
                            width: 0.25.sw,
                            height: 0.1.sh,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5),
                        child: Container(
                          width: 0.5.sw,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Course Title',
                                fontType: FontType.titleMedium,
                                weight: FontWeight.bold,
                              ),
                              Row(
                                children: [
                                  //icon timer and text
                                  Icon(
                                    Icons.timer,
                                    color: MyTheme.theme.colorScheme.primary,
                                    size: 20,
                                  ),
                                  CustomText(
                                    text: ' 2h 30m',
                                    fontType: FontType.bodyMedium,
                                    weight: FontWeight.normal,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
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
