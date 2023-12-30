// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:whatsapp_clone/Pages/Calls.dart';
import 'package:whatsapp_clone/Pages/ChatPage.dart';
import 'package:whatsapp_clone/Pages/Community.dart';
import 'package:whatsapp_clone/Pages/Updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

 late TabController _controller;

@override
  void initState(){
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: "New group",
                  child: Text("New group"),
                ),
                PopupMenuItem(
                  value: "Linked Devices",
                  child: Text("Linked Devices"),
                ),
                PopupMenuItem(
                  value: "Starred messages",
                  child: Text("Starred messages"),
                ),
                PopupMenuItem(
                  value: "Payments",
                  child: Text("Payments"),
                ),
                PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.groups),),
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",),
          ],
      ),
    ),
    body: TabBarView(
      controller: _controller,
      children: [
        Community(),
        ChatPage(),
        Updates(),
        Calls(),
    ]),
    );
  }
}