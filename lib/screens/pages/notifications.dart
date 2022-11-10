import 'package:flutter/material.dart';
import 'package:student_forum/utilities/constant.dart';

import '../../components/noti_tiles.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        elevation: 1,
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: kMainBodyColor,
          ),
        ),
        iconTheme: const IconThemeData(
          color: kMainBodyColor,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'New',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                NotificationTiles(),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                Text(
                  'Earlier',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                NotificationTiles(),
                NotificationTiles(),
                NotificationTiles(),
                NotificationTiles(),
                NotificationTiles(),
                NotificationTiles(),
                NotificationTiles(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
