import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../components/widget/Custom_appBar.dart';
import '../controllers/blog_controller.dart';
import 'widgets/blog_list.dart';

class BlogView extends GetView<BlogController> {
  const BlogView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'Blog',
            subTitle: 'Read our latest blog',
            trailingIcon: FontAwesomeIcons.clockRotateLeft,
            onTrailingTap: () {},
          ),

          // ----------------------- Blog ----------------------- //
          BlogList(),
        ],
      ),
    );
  }
}
