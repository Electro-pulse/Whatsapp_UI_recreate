// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import "package:flutter/material.dart";
import 'package:whatsapp_clone/CustomUI/CustomCard.dart';
import 'package:whatsapp_clone/model/ChatModel.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats=[
    ChatModel(name: "Sanjay",
    isGroup: false,
    currentMessage: "completed the model?",
    time: "8:50pm",
    isSeen: false
    ),
    ChatModel(name: "Junaidh",
    isGroup: false,
    currentMessage: "I'm on the way",
    time: "7:23pm",
    isSeen: true
    ),
    ChatModel(name: "Rosy",
    isGroup: false,
    currentMessage: "mhm",
    time: "5:43pm",
    isSeen: true
    ),
    ChatModel(name: "Developers",
    isGroup: true,
    currentMessage: "issue with 'Menu' layout",
    time: "2,00pm",
    isSeen: false
    ),
    ChatModel(name: "Sam",
    isGroup: false,
    currentMessage: "where r u",
    time: "12,08pm",
    isSeen: false
    ),
    ChatModel(name: "Shajid",
    isGroup: false,
    currentMessage: "what is MediaQuery class",
    time: "11:23am",
    isSeen: true
    ),
    ChatModel(name: "Pavan",
    isGroup: false,
    currentMessage: "I'll call u l8r",
    time: "9:23am",
    isSeen: true
    ),
    ChatModel(name: "Albert",
    isGroup: false,
    currentMessage: "how about 4WD car?",
    time: "8:04am",
    isSeen: true
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.chat),       
        ),
        body: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, index) => CustomCard(chatModel: chats[index]),
        ),
    );
  }
}
