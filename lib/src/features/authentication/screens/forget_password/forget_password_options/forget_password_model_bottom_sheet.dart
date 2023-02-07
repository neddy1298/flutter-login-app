import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_email/forget_password_mail.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_options/forget_password_btn_widget.dart';

import '../../../../../constants/sizes.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tForgetPasswordTitle,
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.headline2,
                fontSize: 25.0,
                fontWeight: FontWeight.w800,
                // color: isDarkMode ? tWhiteColor : tSecondaryColor,
                // fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(
              height: 30.0,
            ),

            // -- Forget Password PopUp

            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: tEmail,
              subTitle: tResetViaEMail,
              onTap: () {
                Navigator.pop(context);
                Get.to(
                  () => const ForgetPasswordMailScreen(),
                );
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: tPhoneNo,
              subTitle: tResetViaPhone,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
