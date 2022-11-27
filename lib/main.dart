import 'package:app1/Lgin.dart';
import 'package:app1/login.dart';
import 'package:app1/product.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'OTP.dart';
import 'Sign.dart';
import 'flower.dart';

void main() {
 // WidgetsFlutterBinding.ensureInitialized();
 //Firebase.initializeApp();
  runApp(SignIn());
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, title: "Sign in",// home: LoginApp(),
       //home: MyWidget(),
      // home:Flower(),
         home: OTP(),
      


        );
  }
}

