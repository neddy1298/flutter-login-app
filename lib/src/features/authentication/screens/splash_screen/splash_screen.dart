import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_app/src/constants/color.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_app/src/features/authentication/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSplashAnimation();

    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        // ignore: sort_child_properties_last
        children: [
          TFadeInAnimation(
            durationInMs: 1600,
            animate: TAnimatePosition(
              topAfter: 100,
              topBefore: -30,
              leftBefore: -30,
              leftAfter: 20,
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tAppName,
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.headline3,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: isDarkMode ? tWhiteColor : tSecondaryColor,
                      // fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    tAppTangLine,
                    style: GoogleFonts.roboto(
                      textStyle: Theme.of(context).textTheme.headline2,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: isDarkMode ? tWhiteColor : tSecondaryColor,
                      // fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            // child: const Image(image: AssetImage()),
          ),
          TFadeInAnimation(
            durationInMs: 2000,
            animate: TAnimatePosition(
              bottomAfter: 100,
              bottomBefore: 0,
              rightBefore: 0,
              rightAfter: -30,
            ),
            child: const Image(
              image: AssetImage(tSplashImage),
            ),
          ),
          TFadeInAnimation(
            durationInMs: 2400,
            animate: TAnimatePosition(
              bottomAfter: 150,
              bottomBefore: 0,
              rightBefore: -30,
              rightAfter: 50,
            ),
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: const Color(0xFF09aed3),
              ),
            ),
          ),
        ],
        alignment: Alignment.center,
      ),
    );
  }
}
