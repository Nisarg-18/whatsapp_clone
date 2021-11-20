import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/calls.dart';
import 'package:whatsapp_ui/screens/camera.dart';
import 'package:whatsapp_ui/screens/chats.dart';
import 'package:whatsapp_ui/screens/status.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabBarController =
        TabController(initialIndex: 1, length: 4, vsync: this);

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        title: Text('WhatsApp'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          )
        ],
        bottom: TabBar(
          // labelPadding: EdgeInsets.symmetric(horizontal: 2.0),
          // isScrollable: true,
          indicatorColor: Colors.white,
          indicatorWeight: 1.5,
          controller: _tabBarController,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabBarController,
        children: [Camera(), Chats(), Status(), Calls()],
      ),
    );
  }
}
