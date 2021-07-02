import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  final images;
  final name;
  final time;
  StatusPage({this.images, this.name, this.time});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 10, right: 7),
          leading: Container(
              child: CircleAvatar(
            backgroundImage: AssetImage(images),
          )),
          title: Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(time),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
        ),
      ],
    );
  }
}
