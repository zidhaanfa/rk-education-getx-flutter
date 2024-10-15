import 'package:flutter/material.dart';

import '../../../../../../config/theme/my_theme.dart';
import '../../../../../components/widget/Custom_card1.dart';

class CourseHomeItem extends StatelessWidget {
  const CourseHomeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard1(
      title: 'Flutter for beginners',
      time: '2h 30m',
      part: '10 Part',
      bottomWidget: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 5,
        ),
        child: LinearProgressIndicator(
          value: 0.5,
          borderRadius: BorderRadius.circular(12),
          backgroundColor: MyTheme.theme.dividerColor,
          valueColor: AlwaysStoppedAnimation<Color>(
            MyTheme.theme.colorScheme.primary,
          ),
        ),
      ),
    );
  }
}
