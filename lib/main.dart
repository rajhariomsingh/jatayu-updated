import 'package:flutter/material.dart';
import 'package:Jatayu/NfcImplement.dart';
import 'package:Jatayu/Signup_page.dart';
import 'package:Jatayu/login_page.dart';
import 'package:Jatayu/welcome_page.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'auth_service.dart';
import 'package:flutter_map/flutter_map.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      title: 'Flutter Demo',
      routes: {
        '/signuppage': (context) => SignUpPage(),
        '/h': (context) =>WelcomePage(),

      },
      theme: ThemeData(


        primarySwatch: Colors.blue,
      ),
      home:AuthService().handleAuthState(),

    );
  }
}

