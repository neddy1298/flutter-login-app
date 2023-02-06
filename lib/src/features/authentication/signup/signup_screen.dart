import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:login_app/src/common_widgets/form/form_header_widget.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/features/authentication/login/login_screen.dart';

import 'widgets/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FormHeaderWidget(
                  image: tWelcomeImage1,
                  title: tSignUpTitle,
                  subTitle: tSignUpSubTitle,
                ),
                const SignUpFormWidget(),
                Column(
                  children: [
                    const Text("OR"),
                    SizedBox(
                      height: tFormHeight - 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage(tGoogleLogoImage),
                          width: 20.0,
                        ),
                        label: Text(
                          tSignInWithGoogle.toUpperCase(),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => Get.to(() => LoginScreen()),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: tAlreadyHaveAnAccount,
                                style: Theme.of(context).textTheme.bodyText1),
                            TextSpan(
                              text: tLogin.toUpperCase(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
