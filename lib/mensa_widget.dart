import 'package:flutter/material.dart';

class MensaWidget extends StatelessWidget {
  const MensaWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 6, 43, 107)),
                borderRadius: BorderRadius.circular(15)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.local_cafe),
                      Text("Mensa"),
                      Icon(Icons.more_vert),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text("Wann? 4.DS"),
                              const SizedBox(height: 5),
                              const Text("Wo? Alte Mensa"),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                  onPressed: () => (),
                                  child: const Text('Zum Angebot'))
                            ]),
                        Image.network(
                          'https://img.freepik.com/free-vector/different-foods-set-white-background_1308-104236.jpg',
                          width: 200,
                        ),
                      ])
                ])));
  }
}
