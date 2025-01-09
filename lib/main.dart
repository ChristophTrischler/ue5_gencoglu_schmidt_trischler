import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Studi app")),
        actions: [
          IconButton(onPressed: () => (), icon: const Icon(Icons.verified_user))
        ],
      ),
      key: _scaffoldKey,
      drawer: Sidebar(),
    ));
  }
}

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [const Text("dsf"), const Text("sdddddddddddd")],
      ),
    );
  }
}
