import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  const ForgetPasswordBtnWidget({
    Key? key,
    required this.btnIcon,
    required this.title,
    required this.subTitle,
    required this.onTap,
  }) : super(key: key);

  final IconData btnIcon;
  final String title, subTitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade300,
        ),
        child: Row(
          children: [
            Icon(btnIcon, size: 60.0),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.headline2,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w800,
                    // color: isDarkMode ? tWhiteColor : tSecondaryColor,
                    // fontStyle: FontStyle.italic,
                  ),
                ),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
