// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  const Calls({super.key});

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add_ic_call),       
        ),
        body: ListView(
          children: [
            
            ListTile(leading: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 13, 161, 144),
              child: Icon(Icons.link,color: Colors.white,)),
            title: Text("Create a call link",style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text("Share a link for your Whatsapp call"),
            onTap: (){},),

            Padding(
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              child: Text("Recent"),
            ),

            callsTile("Albert","images/image4.jpg", "7 minutes ago",true,false,false),
            callsTile("Sam", "images/image4.jpg", "25 minutes ago",true,false,false),
            callsTile("Shajid", "images/image4.jpg", "58 minutes ago",true,true,true),
            callsTile("Ramana", "images/image4.jpg", "Yesterday, 8.37pm",true,false,false),
            callsTile("Vijay", "images/image4.jpg", "27 December, 7.16pm",true,false,false),
            callsTile("Mohan", "images/image4.jpg", "23 December, 3.45pm",true,true,false),
            callsTile("Patrick", "images/image4.jpg", "18 December, 7.16am",true,false,true),
            callsTile("Abin", "images/image4.jpg", "3 December, 8.07pm",true,false,false),
            callsTile("Mohan", "images/image4.jpg", "26 November, 9.45pm",true,false,false),
            callsTile("Patrick", "images/image4.jpg", "20 November, 8.16am",true,false,true),
            ],
        ),
    );
  }

  ListTile callsTile(
    String name,
    String image,
    String time,
    bool isIncoming,
    bool isCallMissed,
    bool isVideoCall
  ) { 
    return ListTile(leading: CircleAvatar(backgroundImage: AssetImage(image),),
          title: Text(name,style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Row(
            children: [
              Icon(isIncoming?Icons.call_received:Icons.call_made,color:isCallMissed?Colors.red:Color.fromARGB(255, 13, 161, 144),size: 15,),
              SizedBox(height: 1,width: 5,),
              Text(time),
            ],
          ),
          trailing: Icon(isVideoCall?Icons.video_call:Icons.call,color: Color.fromARGB(255, 13, 161, 144),),
          onTap: (){},);
  }
}