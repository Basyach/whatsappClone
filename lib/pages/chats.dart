import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme.dart';

class ChatPage extends StatelessWidget {
  final images;
  final title;
  final msg;
  final not;
  final time;
  ChatPage({this.images, this.title, this.msg, this.not, this.time});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: ListTile(
            contentPadding: EdgeInsets.only(left:15,right: 5),
            leading: Container(
                child: CircleAvatar(
              backgroundImage: AssetImage(images),
            )),
            title: Text(title),
            subtitle: Text(msg),
            trailing: Column(
              children: [
                Text(time),
                Container(
                  width: 25,
                  child: CircleAvatar(
                    backgroundColor: lightgreenColor,
                    child: Text(
                      not,
                      style: whiteTextStyle,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
