import 'package:flutter/material.dart';
import './mensa_widget.dart' show Mensawidget;

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
          body: Mensawidget(),
            appBar: TopBar(),
            key: _scaffoldKey,
            drawer: Sidebar(),
            bottomNavigationBar: BottomBar()));
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Hy"),
      BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "ho")
    ]);
  }
}

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size(15, 100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(child: Text("Studi app")),
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
      child: ListView(
        children: const [Text("dsf"), Text("sdddddddddddd")],
      ),
    );
  }
}
