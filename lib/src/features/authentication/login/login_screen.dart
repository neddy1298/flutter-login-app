import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_string.dart';
import 'package:login_app/src/features/authentication/login/login_form_widget.dart';

import 'login_footer_widget.dart';
import '../../../common_widgets/form/form_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
                    title: tLoginTitle,
                    subTitle: tLoginSubTitle),
                const LoginForm(),
                const LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
