import 'package:flutter/material.dart';
import 'package:whatsapp_clone/theme.dart';

class CallsPage extends StatelessWidget {

final images;
final title;
final time;

CallsPage({this.images,this.title,this.time});
 @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
      
     Padding(
          padding: const EdgeInsets.only(top:8.0),
          child: 
          ListTile(
            contentPadding: EdgeInsets.only(left:5,right: 17),
           leading: Container(
             width: 70,
             height: 100,

             child: CircleAvatar(backgroundImage: AssetImage(images),)),
          title: Text(title),
          subtitle: Row(
            children: [
              Icon(Icons.call_received
              ,size: 20,
              color: Colors.green,
              ),
              Text(time),
            ],
          ),
          trailing: Icon(
            
            Icons.call ,
          size: 25,
          color: greenColor),
          

          ),
        ),
        Divider()
  
      ],
    );
  }
}