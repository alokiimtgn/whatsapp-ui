import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'whatsapp/home/calls_list_screen.dart';
import 'whatsapp/home/status_list_screen.dart';
import 'whatsapp/home/chat_list_screen.dart';
import 'whatsapp/home/camera_screen.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(

          // floatingActionButton: FloatingActionButton(
          //   child: Icon(Icons.message_sharp),
          //   mini: false,
          // ),
          appBar: AppBar(
            actions: [
              Icon(Icons.search_rounded),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: PopupMenuButton(
                  // onSelected: (WhyFarther result) { setState(() { _selection = result; }); },
                  itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                    const PopupMenuItem(
                      value: "WhyFarther.harder",
                      child: Text('New group'),
                    ),
                    const PopupMenuItem(
                      value: "WhyFarther.harder",
                      child: Text('New broadcast'),
                    ),
                    const PopupMenuItem(
                      value: "WhyFarther.harder",
                      child: Text('WhatsApp Web'),
                    ),
                    const PopupMenuItem(
                      value: "WhyFarther.harder",
                      child: Text('Starred message'),
                    ),
                    const PopupMenuItem(
                      value: "WhyFarther.harder",
                      child: Text('Payments'),
                    ),
                    const PopupMenuItem(
                      value: "WhyFarther.harder",
                      child: Text('Settings'),
                    ),
                  ],
                ),
                //Icon(Icons.push_pin),
              ),
            ],
            title: Text(
              'WhatsApp',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            bottom: TabBar(
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width:2.0,color: Colors.white),
                  insets: EdgeInsets.symmetric(horizontal:16.0),
              ),
              tabs: [
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                    icon: Text(
                  "CHATS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                Tab(
                    icon: Text(
                  "STATUS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
                Tab(
                    icon: Text(
                  "CALLS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              CameraScreen(),
              ChatListScreen(),
              StatusListScreen(),
              CallListScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
