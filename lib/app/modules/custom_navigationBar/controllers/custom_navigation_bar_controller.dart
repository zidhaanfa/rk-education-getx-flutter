import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/account/views/account_view.dart';
import 'package:getx_skeleton/app/modules/blog/views/blog_view.dart';
import 'package:getx_skeleton/app/modules/courses/views/courses_view.dart';
import 'package:getx_skeleton/app/modules/home/views/home_view.dart';

class CustomNavigationBarController extends GetxController {
  //TODO: Implement CustomNavigationBarController

  final count = 0.obs;

// Selected Menu Index for Navigation Bar
  final selectedMenu = 0.obs;
// List of Pages to be displayed in the Navigation Bar
  late List<Widget> pages;
// Initial Page to be displayed
  late HomeView homeView;
  late CoursesView coursesView;
  late BlogView blogView;
  late AccountView accountView;
// Global Key for the Navigation Bar
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void onInit() {
    super.onInit();

    // Initialize the Pages
    homeView = HomeView();
    coursesView = CoursesView();
    blogView = BlogView();
    accountView = AccountView();

    // Initialize the List of Pages
    pages = [homeView, coursesView, blogView, accountView];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
