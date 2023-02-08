import 'package:flutter/animation.dart';

class DashboardCategoriesModel {
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(
    this.title,
    this.heading,
    this.subHeading,
    this.onPress,
  );

  static List<DashboardCategoriesModel> list = [
    DashboardCategoriesModel("HTML", "HTML", "10 Lessons", () {}),
    DashboardCategoriesModel("PY", "Python", "5 Lessons", () {}),
    DashboardCategoriesModel("JS", "Java Script", "7 Lessons", () {}),
  ];
}
