import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    this.imageColor,
    this.heightBetween,
    required this.image,
    required this.title,
    required this.subTitle,
    this.imageHeight = 0.2,
    this.textAlign,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: crossAxisAlignment,
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
          textAlign: textAlign,
        ),
      ],
    );
  }
}
