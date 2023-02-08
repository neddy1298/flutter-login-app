import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/banners.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/search.dart';
import 'package:login_app/src/features/core/screens/dashboard/widgets/top_corses.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      // AppBar
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Heading
              Text(
                tDahsboardTitle,
                style: GoogleFonts.roboto(
                    textStyle: txtTheme.bodyText1,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                tDashboardHeading,
                style: GoogleFonts.roboto(
                    textStyle: txtTheme.headline2,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: tDashboardPadding),

              // Search Box
              DashboardSearchBox(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),

              // Categories
              DashboardCategories(txtTheme: txtTheme),
              const SizedBox(height: tDashboardPadding),

              // Banners
              DashboardBanners(txtTheme: txtTheme),
              const SizedBox(
                height: tDashboardPadding,
              ),

              // Top Course
              Text(
                tDashboardTopCourse,
                style: GoogleFonts.roboto(
                    textStyle: txtTheme.headline2?.apply(fontSizeFactor: 1.2),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),

              DashboardTopCourses(txtTheme: txtTheme)
            ],
          ),
        ),
      ),
    );
  }
}
