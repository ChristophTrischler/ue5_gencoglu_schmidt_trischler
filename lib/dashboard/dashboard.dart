import 'package:flutter/material.dart';
import 'banner_widget.dart';
import '../main.dart';

import 'time_table_widget.dart';
import './notification_widget.dart' show NotificationWidget;
import './mensa_widget.dart' show MensaWidget;

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TopBar(),
        drawer: const Sidebar(),
        bottomNavigationBar: const BottomBar(0),
        body:
            ListView(padding: const EdgeInsets.all(9), children: const <Widget>[
          NotificationWidget(),
          SizedBox(height: 10),
          BannerWidget(),
          SizedBox(height: 10),
          MensaWidget(),
          SizedBox(height: 10),
          TimeTableWidget()
        ]));
  }
}

class DashboardItemWidget extends StatelessWidget {
  IconData icon;
  String title;
  Widget child;
  Widget topRight;
  DashboardItemWidget(
    this.icon,
    this.title,
    this.child, {
    this.topRight = const SizedBox(),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card.filled(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(icon),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              topRight
            ],
          ),
          Padding(padding: const EdgeInsets.all(10), child: child)
        ],
      ),
    ));
  }
}
