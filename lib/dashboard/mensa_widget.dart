import 'package:flutter/material.dart';
import 'package:ue5_gencoglu_schmidt_trischler/dashboard/dashboard.dart';

class MensaWidget extends StatelessWidget {
  const MensaWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return DashboardItemWidget(
        Icons.local_cafe_outlined,
        "Mensa",
        topRight: const Icon(Icons.more_vert),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text("Wann? 4.DS"),
            const SizedBox(height: 5),
            const Text("Wo? Alte Mensa"),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text('Zum Angebot'))
          ]),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            width: MediaQuery.of(context).size.width * 0.4,
            child: Image.network(
              fit: BoxFit.contain,
              'https://img.freepik.com/free-vector/different-foods-set-white-background_1308-104236.jpg',
            ),
          )
        ]));
  }
}
