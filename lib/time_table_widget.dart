import 'package:flutter/material.dart';

class TimeTableWidget extends StatelessWidget {
  const TimeTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black, width: 1),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.calendar_month),
                Text("Heute"),
                Icon(Icons.more_vert)
              ],
            ),
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: <Widget>[
                TimeTableItem(
                    Icons.school, "7:30", "EMI Ü", "APB E040", Colors.blue),
                TimeTableItem(Icons.sunny, "9:20", "frei", "", Colors.grey),
                TimeTableItem(
                    Icons.book, "11:10", "EMI VL", "HSZ 03", Colors.blue),
                TimeTableItem(
                    Icons.local_cafe, "13:00", "Mensa", "", Colors.green),
                TimeTableItem(
                    Icons.school, "14:50", "AUD Ü", "APB E001", Colors.blue),
                TimeTableItem(Icons.sunny, "16:20", "frei", "", Colors.grey),
              ],
            )
          ],
        ));
  }
}

class TimeTableItem extends StatelessWidget {
  IconData icon;
  String time, lesson, room;
  Color color;
  TimeTableItem(this.icon, this.time, this.lesson, this.room, this.color);

  @override
  Widget build(BuildContext context) {
    TextStyle style =
        const TextStyle(color: Color(0xFF0A1929), fontWeight: FontWeight.bold);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black, width: 1),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12), bottom: Radius.zero),
                  color: color),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(icon),
                  Text(
                    time,
                  )
                ],
              )),
          Text(lesson, style: style),
          Text(room, style: style),
          const SizedBox(height: 4)
        ],
      ),
    );
  }
}
