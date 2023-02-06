import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * 0.2,
        ),
        Text(
          title,
          style: GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.headline2,
            fontSize: 40.0,
            fontWeight: FontWeight.w700,
            // color: isDarkMode ? tWhiteColor : tSecondaryColor,
            // fontStyle: FontStyle.italic,
          ),
        ),
        Text(
          subTitle,
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
