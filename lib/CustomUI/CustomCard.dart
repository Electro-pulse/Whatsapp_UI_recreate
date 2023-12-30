// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/model/ChatModel.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key,required this.chatModel});
  final ChatModel chatModel;
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 172, 163, 163),
              radius: 25,
              child: Icon(chatModel.isGroup?Icons.people:Icons.person),),
            title: Text(chatModel.name,style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all,size: 17,color: chatModel.isSeen?Colors.lightBlue:Colors.grey),
                SizedBox(width: 5),
                Text(chatModel.currentMessage,style: TextStyle(fontSize: 13),),
                ],
            ),
            trailing: Text(chatModel.time),
          ),
          
        ],
      ),
    );
  }
}