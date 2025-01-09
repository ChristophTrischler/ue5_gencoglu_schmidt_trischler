import 'package:flutter/material.dart';
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
          body: const Padding(
              padding: EdgeInsets.all(20),
              child: Column(children: [NotificationWidget(), MensaWidget()])),
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
  Size get preferredSize => const Size(15, 100);

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
