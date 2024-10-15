import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_skeleton/app/components/widget/Custom_card1.dart';

import '../../../../../config/theme/my_theme.dart';
import '../../../../components/config/config.dart';
import '../../../../components/widget/Custom_text.dart';

class CoursesItem extends StatelessWidget {
  const CoursesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard1(
      title: 'Flutter for beginners',
      time: '2h 30m',
      part: '10 Part',
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // icon star rating
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 22,
                ),
                CustomText(
                  text: ' 4.5',
                  fontType: FontType.bodyMedium,
                  weight: FontWeight.normal,
                ),
              ],
            ),
            CustomText(
              text: 'Rp200.000',
              fontType: FontType.bodyMedium,
              weight: FontWeight.normal,
            ),
          ],
        ),
      ),
    );
  }
}
