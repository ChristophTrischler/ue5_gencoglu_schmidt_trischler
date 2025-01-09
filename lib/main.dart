import 'package:flutter/material.dart';
import 'package:ue5_gencoglu_schmidt_trischler/time_table_widget.dart';
import './notification_widget.dart' show NotificationWidget;
import './mensa_widget.dart' show MensaWidget;

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ListView(padding: EdgeInsets.all(20), children: const <Widget>[
            NotificationWidget(),
            SizedBox(height: 10),
            MensaWidget(),
            SizedBox(height: 10),
            TimeTableWidget()
          ]),
          appBar: const TopBar(),
          key: _scaffoldKey,
          drawer: const Sidebar(),
          bottomNavigationBar: const BottomBar(),
        ));
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor: Colors.blueAccent,
      unselectedItemColor: Colors.black,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Dash"),
        BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Musik"),
        BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month), label: "Stundenplan"),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: "Todo"),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: "(Eure Idee)"),
      ],
    );
  }
}

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({super.key});
  @override
  Size get preferredSize => const Size(100, 50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(child: Text("Study-App")),
      actions: [
        IconButton(onPressed: () => (), icon: const Icon(Icons.account_circle))
      ],
    );
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(),
    );
  }
}
