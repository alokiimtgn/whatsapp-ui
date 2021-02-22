import 'package:flutter/material.dart';

class StatusListScreen extends StatefulWidget {
  @override
  _StatusListScreenState createState() => _StatusListScreenState();
}

class _StatusListScreenState extends State<StatusListScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Container(

              color: Colors.white,
              child: Column(
                children: [
                  Container(

                    child: ListView.builder(
                        itemCount: 100,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          if (index == 0) {
                            return Column(
                              children: [
                                ListTile(
                                  leading: Stack(
                                    children: [
                                      Icon(
                                        Icons.account_circle_sharp,
                                        size: 39.0,
                                      ),
                                      Positioned(
                                        child: Icon(
                                          Icons.add_a_photo_rounded,
                                          size: 12,
                                          color: Colors.green,
                                        ),
                                        bottom: 2,
                                        right: 3,
                                      )
                                    ],
                                  ),
                                  title: Text("My Status"),
                                  subtitle: Text("Tap to add status update"),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 18.0, top: 8.0, bottom: 5.0),
                                    child: Text(
                                      "Recent Updates",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[450]),
                                    ),
                                  ),
                                  height: 30.0,
                                  width: MediaQuery.of(context).size.width * 1,
                                  color: Colors.grey[200],
                                ),
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
                                  title: Text("Alok Kumar"),
                                  subtitle: Text("$index minutes ago"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 68.0, right: 8.0),
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
                ],
              )),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: Column(
            children: [
              FloatingActionButton(
                elevation: 12,
                onPressed: () {},
                mini: true,
                child: Icon(Icons.edit),
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton(
                elevation: 12,
                onPressed: () {},
                child: Icon(Icons.camera_alt_rounded),
              ),
            ],
          ),
        )
      ],
    );
  }
}
