// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDlwtMwOtRbLHQzP_R8cHE643PePZzYDm0',
    appId: '1:266645270823:android:bddd37707871c916fa3902',
    messagingSenderId: '266645270823',
    projectId: 'flutter-login-app-89ea0',
    storageBucket: 'flutter-login-app-89ea0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCfgwpix2_rcxlslTrE6HpscMzdE148DBQ',
    appId: '1:266645270823:ios:8999e0547646ef57fa3902',
    messagingSenderId: '266645270823',
    projectId: 'flutter-login-app-89ea0',
    storageBucket: 'flutter-login-app-89ea0.appspot.com',
    androidClientId: '266645270823-n4j3lpg7rlaglu46ggv1diuq2is8tvnt.apps.googleusercontent.com',
    iosClientId: '266645270823-4vipu9c2036dadcsv9e888bgm7kle71e.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginApp',
  );
}
