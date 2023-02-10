import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:login_app/src/repository/authentication_repository/authentications_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instace => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }
}
