import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:getx_skeleton/app/components/widget/Custom_card1.dart';

import '../../../../../../config/theme/my_theme.dart';
import '../../../../../components/config/config.dart';
import '../../../../../components/widget/Custom_text.dart';

class BlogItem extends StatelessWidget {
  const BlogItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard1(
      title: 'Flutter for beginners',
      time: '5m',
      part: 'Category',
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 5,
        ),
        child: Column(
          children: [
            //simple description
            CustomText(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
              fontType: FontType.bodyMedium,
              weight: FontWeight.normal,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
