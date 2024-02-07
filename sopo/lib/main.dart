import 'package:flutter/material.dart';
import 'package:sopo/screens/home_screen.dart';
import 'package:sopo/screens/login_screen.dart';
import 'package:sopo/screens/splash_screen.dart';
// import 'package:sopo/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

ColorScheme defaultColorScheme = const ColorScheme(
  primary: Color.fromARGB(255, 253, 173, 52),
  secondary: Color(0xff03DAC6),
  surface: Color(0xff181818),
  background: Color(0xff121212),
  error: Color(0xffCF6679),
  onPrimary: Color(0xff000000),
  onSecondary: Color(0xff000000),
  onSurface: Color(0xffffffff),
  onBackground: Color(0xffffffff),
  onError: Color(0xff000000),
  brightness: Brightness.dark,
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SOPO',
      theme: ThemeData(
        colorScheme: defaultColorScheme,
      ),
      home: Scaffold(
        // appBar: AppBar(
        //     title: const Image(
        //         image: AssetImage('img/logo.png'), width: 120, height: 120),
        //     centerTitle: true),
        body: SplashScreen(),
      ),
    );
  }
}
