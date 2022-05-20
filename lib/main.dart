import 'package:flutter/material.dart';
import 'ui/pages/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes : {
        '/' : (context) => SplashPage(),
        '/get-started' :(context) => GetStartedPage(),
        '/sign-up' : (context) => SignUpPage(),
        '/sign-in': (context) => SignInPage(),
        '/bonus' : (context) => BonusPage(),
        '/main' : (context) => MainPage()
      } 
    );
  }
}