import 'package:flutter/material.dart';
import 'package:primerio/app_controller.dart';
import 'package:primerio/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login no sistema',
                style: TextStyle(fontSize: 30),
              ),
              Container(
                height: 10,
              ),
              TextField(
                onChanged: (value) => {email = value},
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email'),
              ),
              Container(
                height: 20,
              ),
              TextField(
                onChanged: (value) => {password = value},
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              Container(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(fixedSize: Size(200, 50)),
                      onPressed: () {
                        if (email == "joseadauto923@gmail.com" &&
                            password == "renatinha") {
                          Navigator.of(context).pushReplacementNamed('/home');
                        } else {
                          print('Deslogado');
                        }
                      },
                      child: Text('Entrar'))
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
