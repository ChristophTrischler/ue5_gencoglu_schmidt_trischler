import 'package:flutter/material.dart';
import 'package:ue5_gencoglu_schmidt_trischler/time_table/time_table.dart';
import 'theme.dart' show buildAppTheme, mainColor;
import 'dashboard/dashboard.dart' show Dashboard;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: buildAppTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (c) => const Dashboard(),
        "/time_table": (c) => TimeTablePage(),
      },
    );
  }
}

class BottomBar extends StatelessWidget {
  final int _index;

  const BottomBar(this._index, {super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> routes = ["/", "/musik", "/time_table", "todo"];

    return BottomNavigationBar(
      onTap: (i) {
        String rout = routes[i];
        Navigator.pushNamed(context, rout);
      },
      currentIndex: _index,
      items: const [
        BottomBarItem(icon: Icon(Icons.dashboard), label: "Dash"),
        BottomBarItem(icon: Icon(Icons.music_note), label: "Musik"),
        BottomBarItem(
          icon: Icon(Icons.calendar_month),
          label: "Stundenplan",
        ),
        BottomBarItem(icon: Icon(Icons.list), label: "Todo"),
        BottomBarItem(icon: Icon(Icons.star), label: "(Eure Idee)"),
      ],
    );
  }
}

class BottomBarItem extends BottomNavigationBarItem {
  const BottomBarItem({required super.icon, super.key, super.label});

  @override
  Widget get activeIcon => Container(
      decoration: BoxDecoration(
          color: mainColor, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(3),
      child: super.icon);
}

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  PreferredSizeWidget? bottom;

  TopBar({super.key, this.bottom});
  @override
  Size get preferredSize =>
      Size.fromHeight(40 + (bottom?.preferredSize.height ?? 0));

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(child: Text("Study-App")),
      bottom: bottom,
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
