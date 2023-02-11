import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/features/authentication/controllers/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController());
    var otp;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              tOtpTitle,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 80.0,
              ),
            ),
            Text(
              tOtpMessage.toUpperCase(),
              style: GoogleFonts.roboto(
                fontSize: 15.0,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              "$tOtpMessage support@sanscode.com",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20.0,
            ),
            OtpTextField(
              mainAxisAlignment: MainAxisAlignment.center,
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (code) {
                otp = code;
                OTPController.instace.verifyOTP(otp);
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  OTPController.instace.verifyOTP(otp);
                },
                child: const Text(tNext),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
