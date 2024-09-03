import 'package:flutter/material.dart';

class AppController extends ChangeNotifier{
  static AppController instance = AppController();
  bool temaDark = false;
  List<String> teste = [];
  bool logado = false;
  changeTheme() {
    temaDark = !temaDark;
    notifyListeners();
  }

  addValue(String valor){
    teste.add(valor);
  }

  resetValue(){
    teste = [];
  }

  mostrarLogado(){
    logado = !logado;
  }
}