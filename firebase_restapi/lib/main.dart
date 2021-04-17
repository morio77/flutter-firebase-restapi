import 'package:firebase_restapi/pages/account_info.dart';
import 'package:firebase_restapi/pages/home.dart';
import 'package:firebase_restapi/pages/sign_in.dart';
import 'package:firebase_restapi/pages/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

Future<void> main() async {
  await DotEnv.load(fileName: '.env'); // <-追加
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Firebase RestAPI Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/sign_up': (context) => SignUpPage(),
        '/sign_in': (context) => SignInPage(),
        '/account_info': (context) => AccountInfoPage(),
      },
    );
  }
}
