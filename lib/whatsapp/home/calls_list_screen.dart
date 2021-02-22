import 'package:flutter/material.dart';

class CallListScreen extends StatefulWidget {
  @override
  _CallListScreenState createState() => _CallListScreenState();
}

class _CallListScreenState extends State<CallListScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.height * 1,
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                if (index % 2 == 0) {
                  return Column(
                    children: [
                      ListTile(
                          tileColor: Colors.white,
                          leading: Icon(
                            Icons.account_circle_sharp,
                            size: 39.0,
                          ),
                          title: Text("Moon"),
                          subtitle: Row(
                            children: [
                              Icon(
                                Icons.call_missed,
                                size: 12.0,
                                color: Colors.red,
                              ),
                              Text("Today, 06:01 Am")
                            ],
                          ),
                          trailing: Icon(
                            Icons.video_call,
                            color: Colors.green,
                          )),
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
                } else {
                  return Column(
                    children: [
                      ListTile(
                          tileColor: Colors.white,
                          leading: Icon(
                            Icons.account_circle_sharp,
                            size: 39.0,
                          ),
                          title: Text("Moon"),
                          subtitle: Row(
                            children: [
                              Icon(
                                Icons.call_received,
                                size: 12.0,
                                color: Colors.green,
                              ),
                              Text("Today, 12:01 Am")
                            ],
                          ),
                          trailing: Icon(
                            Icons.call,
                            color: Colors.green,
                          )),
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
                }
              }),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: FloatingActionButton(
            elevation: 12,
            onPressed: () {},
            child: Icon(Icons.call),
          ),
        ),
      ],
    );
  }
}
