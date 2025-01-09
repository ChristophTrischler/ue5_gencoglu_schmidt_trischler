import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: DefaultTextStyle(
            style: const TextStyle(color: Colors.white),
            child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(139, 0, 0, 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                    padding: EdgeInsets.all(5),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.error_rounded,
                                color: Colors.white,
                              ),
                              Text(
                                "Meldung",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.close,
                                color: Colors.white,
                              )
                            ]),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              "Einschreiben für mündliche Prüfungen hat begonnen und endet am 21.01.2025",
                              textAlign: TextAlign.center,
                            ))
                      ],
                    )))));
  }
}
