import 'package:flutter/material.dart';

import 'atom/blog_item.dart';

class BlogList extends StatelessWidget {
  const BlogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 8,
      ),
      itemBuilder: (context, index) {
        return BlogItem();
      },
    );
  }
}
