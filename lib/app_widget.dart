import 'package:flutter/material.dart';
import 'package:primerio/app_controller.dart';
import 'package:primerio/home_page.dart';
import 'package:primerio/login_page.dart';
import 'package:primerio/main.dart';
import 'package:primerio/pages/about_page.dart';

class AppWidget extends StatelessWidget {
  final String title;
  const AppWidget({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: AppController.instance.temaDark
                    ? Brightness.dark
                    : Brightness.light),
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
              '/about': (context) => AboutPage()
            },
          );
        });
  }
}
