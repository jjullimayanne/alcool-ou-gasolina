import 'package:flutter/material.dart';

class AppFlutter extends StatefulWidget {
  const AppFlutter({Key? key}) : super(key: key);

  @override
  _AppFlutterState createState() => _AppFlutterState();
}

class _AppFlutterState extends State<AppFlutter> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.red)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Saiba qual a melhor opção para o abastecimento do seu carro",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: "Preço do álcool, ex: 1.59"),
              style: TextStyle(fontSize: 22),
                controller: _controllerAlcool,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: "Preço da gasolina, ex: 3.59"),
              style: TextStyle(
                fontSize: 22,
              ),
              controller: _controllerGasolina,
            ),
            Padding(
              padding: EdgeInsets.all(13),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Calcular"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
