import 'package:flutter/material.dart';
import 'package:flutterapplocalnotification/local_notification_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Local Notification")),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('Click to Say Hi'),
            onPressed: () {
              NotifcationApi.showNotification(
                  title: "First Notification ever",
                  body:
                      'Hey you do that you finnaly make your first local Notification!',
                  payload: 'nidhal.maz');
              print('Pressed');
            },
          )
        ],
      ),
    );
  }
}
