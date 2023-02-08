import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_string.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';

class DashboardBanners extends StatelessWidget {
  const DashboardBanners({
    Key? key,
    required this.txtTheme,
  }) : super(key: key);

  final TextTheme txtTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Flexible(
                      child: Icon(Icons.bookmark_border_sharp),
                      // width: 30,
                    ),
                    Flexible(
                      child: Image(
                        image: AssetImage(tDashboardHtmlImage),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Text(
                  tDashboardBannerTitle1,
                  style: GoogleFonts.roboto(
                    textStyle: txtTheme.headline2,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  tDashboardBannerSubTitle,
                  style: GoogleFonts.roboto(
                    textStyle: txtTheme.bodyText2,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: tDashboardPadding,
        ),

        // 2nd Banner
        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: tCardBgColor),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Flexible(
                          child: Icon(Icons.bookmark_border_sharp),
                          // width: 30,
                        ),
                        Flexible(
                          child: Image(
                              image: AssetImage(tDashboardPythonImage),
                              width: 200.0),
                        ),
                      ],
                    ),
                    Text(
                      tDashboardBannerTitle2,
                      style: GoogleFonts.roboto(
                        textStyle: txtTheme.headline2,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      tDashboardBannerSubTitle,
                      style: GoogleFonts.roboto(
                        textStyle: txtTheme.bodyText2,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: (() {}),
                  child: const Text(tDashboardButton),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
