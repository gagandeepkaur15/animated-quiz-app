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
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAzyc1f3UniekDH45CytwCCycnri6r_hqE',
    appId: '1:883523029808:web:30198e0b8b325908bf56f5',
    messagingSenderId: '883523029808',
    projectId: 'otp-login-d1d4a',
    authDomain: 'otp-login-d1d4a.firebaseapp.com',
    storageBucket: 'otp-login-d1d4a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCXh1YKQfVrbPxVRWfem7BuJ2ZOQUvb138',
    appId: '1:883523029808:android:63bc6a5f733f8615bf56f5',
    messagingSenderId: '883523029808',
    projectId: 'otp-login-d1d4a',
    storageBucket: 'otp-login-d1d4a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC7EpgqHJSYjOLnoZbOi4PL5rNH1PsM7kI',
    appId: '1:883523029808:ios:847b51dceb8f0079bf56f5',
    messagingSenderId: '883523029808',
    projectId: 'otp-login-d1d4a',
    storageBucket: 'otp-login-d1d4a.appspot.com',
    androidClientId: '883523029808-dh8n3mm015im1fqlkhu1li8v7l5vu4mo.apps.googleusercontent.com',
    iosClientId: '883523029808-4a7pd2g766cqsn2mil5nrnidt4852j0u.apps.googleusercontent.com',
    iosBundleId: 'com.example.quizApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC7EpgqHJSYjOLnoZbOi4PL5rNH1PsM7kI',
    appId: '1:883523029808:ios:847b51dceb8f0079bf56f5',
    messagingSenderId: '883523029808',
    projectId: 'otp-login-d1d4a',
    storageBucket: 'otp-login-d1d4a.appspot.com',
    androidClientId: '883523029808-dh8n3mm015im1fqlkhu1li8v7l5vu4mo.apps.googleusercontent.com',
    iosClientId: '883523029808-4a7pd2g766cqsn2mil5nrnidt4852j0u.apps.googleusercontent.com',
    iosBundleId: 'com.example.quizApp',
  );
}
