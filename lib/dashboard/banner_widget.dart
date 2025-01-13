import 'package:flutter/material.dart';
import '../theme.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme themeData = Theme.of(context)
        .textTheme
        .apply(bodyColor: Colors.white, displayColor: Colors.white);

    return Theme(
        data: ThemeData(textTheme: themeData),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _getDayFormated(),
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                  fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BannerItemWidget("OPAL", Icons.attach_file, AppColors.opalBlue),
                BannerItemWidget(
                    "Selma", Icons.folder_outlined, AppColors.selmaOrange),
                BannerItemWidget(
                    "Matrix", Icons.message_outlined, AppColors.matrixGreen),
                BannerItemWidget(
                    "Mail", Icons.mail_outline, AppColors.mailPink),
              ],
            ),
          ],
        ));
  }
}

String _getDayFormated() {
  DateTime date = DateTime.now();
  String dayName = switch (date.weekday) {
    1 => "Montag",
    2 => "Dienstag",
    3 => "Mittwoch",
    4 => "Donnerstag",
    5 => "Freitag",
    6 => "Samstag",
    7 => "Sonntag",
    int i => throw "fuck you $i",
  };
  String monthName = switch (date.month) {
    1 => "Januar",
    2 => "Februar",
    3 => "März",
    4 => "April",
    5 => "Mai",
    6 => "Juni",
    7 => "Juli",
    8 => "August",
    9 => "September",
    10 => "Oktober",
    11 => "November",
    12 => "Dezember",
    int i => throw "fuck you $i"
  };

  return "$dayName, ${date.day}. $monthName";
}

class BannerItemWidget extends StatelessWidget {
  String text;
  IconData icon;
  Color color;

  BannerItemWidget(this.text, this.icon, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(12)),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.white),
            )
          ],
        ));
  }
}
