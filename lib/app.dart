import 'package:flutter/material.dart';

class AppFlutter extends StatefulWidget {
  const AppFlutter({Key? key}) : super(key: key);

  @override
  _AppFlutterState createState() => _AppFlutterState();
}

class _AppFlutterState extends State<AppFlutter> {
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
              padding: EdgeInsets.all(40),
              child: Text("oi"),
            )
          ],
        ),
      ),
    );
  }
}
