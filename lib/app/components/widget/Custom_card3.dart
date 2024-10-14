import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../config/config.dart';
import 'Custom_text2.dart';

class CustomCard3 extends StatelessWidget {
  CustomCard3({
    Key? key,
    this.onTap,
    required this.imageUrl,
    required this.title,
    this.icon1,
    this.icon2,
    this.onPressedIcon1,
    this.onPressedIcon2,
    this.iconColor1,
    this.iconColor2,
    this.cardColor,
    this.fontType,
    this.elevation,
  }) : super(key: key);

  Function()? onTap;
  String imageUrl;
  String title;
  IconData? icon1;
  IconData? icon2;
  Function()? onPressedIcon1;
  Function()? onPressedIcon2;
  Color? iconColor1;
  Color? iconColor2;
  Color? cardColor;
  FontType? fontType;
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
        child: Column(
          children: [
            Card(
              elevation: elevation ?? 1,
              shadowColor: theme.shadowColor.withOpacity(0.5),
              color: cardColor ?? theme.cardColor,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 8),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              imageUrl,
                              width: 0.65.sw,
                              height: 0.1.sh,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Icon button for favorite
                            icon1 != null
                                ? IconButton(
                                    onPressed: onPressedIcon1,
                                    icon: Icon(
                                      icon1,
                                      color: iconColor1 ??
                                          theme
                                              .buttonTheme.colorScheme!.primary,
                                    ),
                                  )
                                : Container(),
                            icon2 != null
                                ? IconButton(
                                    onPressed: onPressedIcon2,
                                    icon: Icon(
                                      icon2,
                                      color: iconColor2 ??
                                          theme.buttonTheme.colorScheme!
                                              .secondary,
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 12),
                      child: CustomText2(
                        text: title,
                        fontType: fontType ?? FontType.bodyMedium,
                        weight: FontWeight.normal,
                        maxLines: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
