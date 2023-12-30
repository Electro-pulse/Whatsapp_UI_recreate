// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.camera_alt),       
        ),
        body: ListView(
          children: [
            ListTile(title: Text("Status",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            trailing: PopupMenuButton<String>(
                        itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(
                value: "Status Privacy",
                child: Center(widthFactor: 1, child: Text("Status Privacy")),
              ),
            ];},),
            ),
            ListTile(leading: CircleAvatar(backgroundImage: AssetImage("images/image4.jpg"),),
            title: Text("My status",style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("Tap to add my status"),
            onTap: (){},),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              child: Text("Recent Updates"),
            ),

            statusTile("Albert", "images/image4.jpg", "Just now"),
            statusTile("Sam", "images/image4.jpg", "18 minutes ago"),
            statusTile("Shajid", "images/image4.jpg", "30 minutes ago"),
            statusTile("Ramana", "images/image4.jpg", "4:00pm"),           
            statusTile("Vijay", "images/image4.jpg", "3:18pm"),
            statusTile("Patrick", "images/image4.jpg", "12:04pm"),
            statusTile("Mohan", "images/image4.jpg", "11:48am"),
            statusTile("Pavi", "images/image4.jpg", "10:23am"),
            statusTile("Krish", "images/image4.jpg", "9:04am"),
            statusTile("Vedant", "images/image4.jpg", "8:48am"),

            ],
        ),
    );
  }

  ListTile statusTile(
    String name,
    String image,
    String time
  ) {
    return ListTile(leading: CircleAvatar(backgroundImage: AssetImage(image),),
          title: Text(name,style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(time),
          onTap: (

          ){},);
  }
}