import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '/app/components/widget/Custom_text2.dart';

import '../config/config.dart';

class CustomCard2 extends StatelessWidget {
  CustomCard2({
    Key? key,
    this.onTap,
    required this.imageUrl,
    required this.title,
    this.cardColor,
    this.elevation,
  }) : super(key: key);

  Function()? onTap;
  String imageUrl;
  String title;
  Color? cardColor;
  double? elevation;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(
        right: 8.0,
        left: 8.0,
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: Card(
          elevation: elevation ?? 1,
          shadowColor: theme.shadowColor.withOpacity(0.5),
          color: cardColor ?? theme.cardColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
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
                          imageUrl,
                          width: 0.35.sw,
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
                        child: CustomText2(
                          text: title,
                          fontType: FontType.bodyMedium,
                          weight: FontWeight.normal,
                          maxLines: 3,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
