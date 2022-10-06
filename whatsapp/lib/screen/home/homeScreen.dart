import 'package:flutter/material.dart';
import 'package:whatsapp/screen/home/callScreen.dart';
import 'package:whatsapp/screen/home/chatScreen.dart';
import 'package:whatsapp/screen/home/statusScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leadingWidth: 200,
            leading: Center(
              child: Text(
                "WhatsApp",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.more_vert_sharp),
            ],
            centerTitle: true,
            backgroundColor: Color(0xff128C7E),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(child: Text("CHATS")),
                Tab(child: Text("STATUS")),
                Tab(child: Text("CALLS")),
              ],
            ),
          ),
          body: TabBarView(
            children: [ChatScreen(),StatusScren(),CallScreen(),],
          ),
        ),
      ),
    );
  }
}
