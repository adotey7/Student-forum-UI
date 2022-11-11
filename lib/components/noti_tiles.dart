import 'package:flutter/material.dart';

class NotificationTiles extends StatelessWidget {
  const NotificationTiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
        ),
        title: Text(
          'James tagged you and 55 others in a post. Review now',
        ),
      ),
    );
  }
}
