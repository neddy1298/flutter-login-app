import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/image_strings.dart';
import '../../../constants/text_string.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(tWelcomeImage1),
          height: size.height * 0.2,
        ),
        Text(
          tLoginTitle,
          style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.headline2,
            fontSize: 40.0,
            fontWeight: FontWeight.w700,
            // color: isDarkMode ? tWhiteColor : tSecondaryColor,
            // fontStyle: FontStyle.italic,
          ),
        ),
        Text(
          tLoginSubTitle,
          style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.bodyText1,
            // color: isDarkMode ? tWhiteColor : tSecondaryColor,
            // fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
