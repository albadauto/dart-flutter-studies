import 'package:flutter/material.dart';
import 'package:primerio/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Meu amor',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
        scrollDirection: Axis.vertical ,
          children: [
            Text('Contador $counter'),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {
                    setState(() {
                      AppController.instance.resetValue();
                    });
                  }, child: Text('Resetar'), ),
                  ElevatedButton(onPressed: () => {
                    Navigator.of(context).pushNamed('/about')
                  }, child: Text('Ir para sobre'))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.black,
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.black,
                ),
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.black,
                ),
              ],
            ),
            Column(
              children: 
                List.generate(AppController.instance.teste.length, (index){
                  return Text(AppController.instance.teste[index]);
                }),
            )
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            AppController.instance.addValue("teste");
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
