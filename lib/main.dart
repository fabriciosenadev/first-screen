import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var textWall =
      "O Muro das Lamentações ou Muro Ocidental é o segundo\n local mais sagrado do judaísmo, atrás somente do Santo\n dos Santos, no monte de Templo. Trata-se do único\n vestigio do antigo Templo de Herodes, erguido por\n Herodes, oGrande no lugar do Templo de Jerusalém\n inicial.";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Center(
              child: Text("Meu Primeiro App"),
            )),
            body: Container(
                child: Column(
              children: [
                Image(height: 210, image: AssetImage("assets/muro.jpg")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            margin: EdgeInsets.only(right: 100),
                            child: Text(
                              "Kotel",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )),
                        Container(
                            margin: EdgeInsets.only(right: 35),
                            child: Text(
                              "Jerusalem, Isarel",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            )),
                      ],
                    )),
                    // Expanded(child: Text("")),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.blue,
                                ),
                                Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Text("3.891")),
                              ],
                            ))),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 60),
                          child: Column(children: [
                            Icon(Icons.phone, color: Colors.blue),
                            Text("Ligar")
                          ]),
                        ),
                        Container(
                          child: Column(children: [
                            Icon(Icons.location_on, color: Colors.blue),
                            Text("Endereço")
                          ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30),
                          child: Column(children: [
                            Icon(Icons.share, color: Colors.blue),
                            Text("Compartilhar")
                          ]),
                        )
                      ],
                    )),
                Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(12),
                          child: Column(children: [
                            Text(textWall, style: TextStyle(fontSize: 14))
                          ]),
                        ),
                      ],
                    ))
              ],
            ))));
  }
}
