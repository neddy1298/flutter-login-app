import 'package:flutter/animation.dart';
import 'package:login_app/src/constants/image_strings.dart';

class DashboardTopCourseModel {
  final String image;
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardTopCourseModel(
    this.image,
    this.title,
    this.heading,
    this.subHeading,
    this.onPress,
  );

  static List<DashboardTopCourseModel> list = [
    DashboardTopCourseModel(
        tDashboardHtmlImage, "HTML", "HTML", "10 Lessons", () {}),
    DashboardTopCourseModel(
        tDashboardPythonImage, "PY", "Python", "5 Lessons", () {}),
    DashboardTopCourseModel(
        tDashboardJavascriptImage, "JS", "Java Script", "7 Lessons", () {}),
  ];
}
