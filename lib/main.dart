import 'package:firebaseauth/homeLoginScreen.dart';
import 'package:firebaseauth/homeScreen.dart';
import 'package:firebaseauth/loginScreen.dart';
import 'package:firebaseauth/recoveryPassScreen.dart';
import 'package:firebaseauth/registerScreen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/home',
    routes: {
      "/home": (_) => HomeScreen(),
      "/register": (_) => RegisterScreen(),
      "/login": (_) => LoginScreen(),
      "/homeLogin": (_) => HomeLoginScreen(),
      "/recoveryPass": (_) => RecoveryPassScreen(),
    }
  ));

}

