import 'package:flutter/material.dart';

class ChatListScreen extends StatefulWidget {
  @override
  _ChatListScreenState createState() => _ChatListScreenState();
}

class _ChatListScreenState extends State<ChatListScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Container(
          child: ListView.builder(
              itemCount: 200,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    ListTile(
                      tileColor: Colors.white,
                      leading: Icon(
                        Icons.account_circle_sharp,
                        size: 39.0,
                      ),
                      title: Text("Alok Kumar"),
                      subtitle: Text("Hi"),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("02:31 pm"),
                          Container(
                            height: 18,
                            width: 18,
                            child: Center(
                                child: Text(
                              "$index",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 9),
                            )),
                            decoration: BoxDecoration(
                                color: Colors.red[500],
                                border: Border.all(
                                  color: Colors.red[500],
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 68.0, right: 8.0),
                      child: Container(
                        height: 1.0,
                        width: MediaQuery.of(context).size.width * 1,
                        color: Colors.grey[350],
                      ),
                    )
                  ],
                );
              }),
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.height * 1,
          // color: Colors.purple,
        ),

        Positioned(
          bottom: 10,
          right: 10,
          child: FloatingActionButton(
            elevation: 12,
            onPressed: () {},
            child: Icon(Icons.message_outlined),
          ),
        ),
      ],
    );
  }
}
