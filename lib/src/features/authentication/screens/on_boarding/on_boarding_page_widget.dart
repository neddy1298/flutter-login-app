import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants/sizes.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.5,
          ),
          Text(
            model.title,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headline2,
              fontSize: 32,
              fontWeight: FontWeight.w700,
              // fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            model.subTitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headline1,
              fontSize: 20,
              fontWeight: FontWeight.w700,

              // fontStyle: FontStyle.italic,
            ),
          ),
          Text(
            model.counterText,
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              textStyle: Theme.of(context).textTheme.headline2,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              // fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: 150.0,
          ),
        ],
      ),
    );
  }
}
