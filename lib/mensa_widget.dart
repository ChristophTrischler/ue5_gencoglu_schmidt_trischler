import 'package:flutter/material.dart';

class MensaWidget extends StatelessWidget {
  const MensaWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            /*shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0))*/
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent),
                borderRadius: BorderRadius.circular(15)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Icon(Icons.local_cafe),
                  SizedBox(width: 15),
                  Text("Mensa"),
                  SizedBox(width: 65),
                  Image.network(
                      'https://img.freepik.com/free-vector/different-foods-set-white-background_1308-104236.jpg',
                      width: 50),
                  SizedBox(width: 130),
                  Icon(Icons.more_vert),
                ],
              ),
              SizedBox(height: 10),
              Padding(
              padding: EdgeInsets.only(left: 35), // "Mensa" hizasına göre
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Wann? 4.DS"),
                  SizedBox(height: 5),
                  Text("Wo? Alte Mensa"),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed:() => (), child: Text('Zum Angebot'))
            ]))])));
  }
}
