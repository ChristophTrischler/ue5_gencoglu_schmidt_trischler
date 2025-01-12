import 'package:flutter/material.dart';
import 'package:ue5_gencoglu_schmidt_trischler/main.dart';
import 'package:ue5_gencoglu_schmidt_trischler/theme.dart';

class TimeTablePage extends StatelessWidget {
  final Map<Weekday, List<TimeTableItem>> _data = {
    Weekday.mon: [
      TimeTableItem.free(),
      TimeTableItem.free(),
      TimeTableItem("Mathe", Type.lecture, room: "HSZ 03"),
      TimeTableItem("Seminargruppe", Type.exercise),
      TimeTableItem.free(),
      TimeTableItem.free(),
    ],
    Weekday.tue: [
      TimeTableItem.free(),
      TimeTableItem.free(),
      TimeTableItem.free(),
      TimeTableItem.free(),
      TimeTableItem.free(),
      TimeTableItem.free(),
    ],
    Weekday.wed: [
      TimeTableItem.free(),
      TimeTableItem("Emi", Type.exercise),
      TimeTableItem("Mathe", Type.lecture),
      TimeTableItem("AuD", Type.exercise),
      TimeTableItem.free(),
      TimeTableItem.free(),
    ],
    Weekday.thu: [
      TimeTableItem("Mathe", Type.exercise),
      TimeTableItem("Mathe", Type.exercise),
      TimeTableItem("EMI", Type.lecture),
      TimeTableItem.free(),
      TimeTableItem.free(),
      TimeTableItem.free(),
    ],
    Weekday.fri: [
      TimeTableItem.free(),
      TimeTableItem("AuD", Type.lecture),
      TimeTableItem("Mathe", Type.lecture),
      TimeTableItem.free(),
      TimeTableItem.free(),
      TimeTableItem.free(),
    ],
  };

  TimeTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    var tabs = Weekday.values.map((d) => Text(d.weekdayStr())).toList();
    var content = Weekday.values.map((d) => TimeTableTabWidget(d, _data[d]!));

    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: TopBar(
              bottom: TabBar(
            tabs: tabs,
          )),
          bottomNavigationBar: const BottomBar(2),
          body: TabBarView(
            children: content.toList(),
          ),
        ));
  }
}

class TimeTableTabWidget extends StatelessWidget {
  Weekday day;
  List<TimeTableItem> lessons;

  TimeTableTabWidget(this.day, this.lessons, {super.key});

  @override
  Widget build(BuildContext context) {
    var index = 0;
    Map<int, TimeTableItem> lessonsMap = this.lessons.asMap();
    var lessons = lessonsMap.entries
        .map((entry) => LessonWidget(entry.key, entry.value))
        .toList();

    return Column(children: [
      Title(color: Colors.white, child: Text(day.weekdayStr())),
      Column(
        children: lessons,
      )
    ]);
  }
}

class LessonWidget extends StatelessWidget {
  TimeTableItem lesson;
  int time;

  LessonWidget(this.time, this.lesson, {super.key});

  @override
  Widget build(BuildContext context) {
    var icon = switch (lesson.type) {
      Type.free => Icons.wb_sunny_outlined,
      Type.mensa => Icons.local_cafe_outlined,
      Type.lecture => Icons.school_outlined,
      Type.exercise => Icons.book_outlined,
    };
    var color = switch (lesson.type) {
      Type.free => LessonColors.free,
      Type.mensa => LessonColors.mensa,
      Type.lecture => LessonColors.mensa,
      Type.exercise => AppColors.opalBlue,
    };

    return Card(
      clipBehavior: Clip.hardEdge,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            color: color,
            child: Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
          ),
          Text(
            lesson.name,
          ),
          Text(
            lesson.room ?? "",
          ),
          const SizedBox(),
          TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.edit_outlined,
                size: 25,
                color: mainColor,
              ))
        ],
      ),
    );
  }
}

enum Weekday { mon, tue, wed, thu, fri }

extension WeekdayExtension on Weekday {
  Weekday wDayFromInt(int i) {
    switch (i) {
      case 1:
        return Weekday.mon;
      case 2:
        return Weekday.thu;
      case 3:
        return Weekday.wed;
      case 4:
        return Weekday.thu;
      case 5:
        return Weekday.fri;
      default:
        return Weekday.mon;
    }
  }

  String weekdayStr() {
    switch (this) {
      case Weekday.mon:
        return "Mon";
      case Weekday.tue:
        return "Tue";
      case Weekday.wed:
        return "Wed";
      case Weekday.thu:
        return "Thu";
      case Weekday.fri:
        return "Fri";
    }
  }
}

enum Type { exercise, lecture, free, mensa }

class TimeTableItem {
  Type type;
  String name;
  String? room;

  TimeTableItem(this.name, this.type, {this.room});
  factory TimeTableItem.free() {
    return TimeTableItem("Frei", Type.free);
  }
}
