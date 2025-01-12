import 'package:flutter/material.dart';
import 'package:ue5_gencoglu_schmidt_trischler/dashboard/dashboard.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData(
          cardTheme: const CardTheme(color: Color.fromRGBO(139, 0, 0, 1)),
          iconTheme: const IconThemeData(color: Colors.white),
          textTheme:
              const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        ),
        child: DashboardItemWidget(
          Icons.error_rounded,
          "Meldung",
          const Text.rich(
            TextSpan(
              text:
                  "Einschreiben für mündliche Prüfungen hat begonnen und endet am \n",
              children: [
                TextSpan(
                    text: "21.01.2025",
                    style: TextStyle(fontWeight: FontWeight.bold))
              ],
            ),
            textAlign: TextAlign.center,
          ),
          topRight: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.close,
              )),
        ));
  }
}
