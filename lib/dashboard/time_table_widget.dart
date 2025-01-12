import 'package:flutter/material.dart';
import 'package:ue5_gencoglu_schmidt_trischler/dashboard/dashboard.dart';
import 'package:ue5_gencoglu_schmidt_trischler/theme.dart';

class TimeTableWidget extends StatelessWidget {
  const TimeTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardItemWidget(
        Icons.calendar_month,
        "Heute",
        topRight: const Icon(Icons.more_vert),
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.all(7),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            TimeTableItem(
                Icons.school_outlined, "7:30", "EMI Ü", LessonColors.learning,
                room: "APB E040"),
            TimeTableItem(
                Icons.wb_sunny_outlined, "9:20", "frei", LessonColors.free),
            TimeTableItem(Icons.auto_stories_outlined, "11:10", "HSZ 03",
                LessonColors.learning,
                room: "EMI VL"),
            TimeTableItem(Icons.local_cafe_outlined, "13:00", "Mensa",
                LessonColors.mensa),
            TimeTableItem(
                Icons.school_outlined, "14:50", "AUD Ü", LessonColors.learning,
                room: "APB E001"),
            TimeTableItem(
                Icons.wb_sunny_outlined, "16:20", "frei", LessonColors.free),
          ],
        ));
  }
}

class TimeTableItem extends StatelessWidget {
  IconData icon;
  String time, lesson;
  String? room;
  Color color;
  TimeTableItem(this.icon, this.time, this.lesson, this.color,
      {this.room, super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle style =
        const TextStyle(color: Color(0xFF0A1929), fontWeight: FontWeight.bold);

    Text? r;
    if (room != null) {
      r = Text(room!);
    }

    var children = [
      Container(
          decoration: BoxDecoration(color: color),
          padding: const EdgeInsets.all(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Text(
                time,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w300),
              )
            ],
          )),
      Text(lesson, style: style),
      r,
      const SizedBox(height: 4)
    ].whereType<Widget>().toList();

    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: children,
      ),
    );
  }
}
