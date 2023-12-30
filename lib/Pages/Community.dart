// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class Community extends StatelessWidget {
  const Community({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5)),
          Column(
            children: [
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 221, 217, 217),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  width: 50,
                  child: Icon(Icons.groups,size: 30,),
                ),
                title: Text("New Community",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("Tap to add new community"),
              ),
              Divider(thickness: 0.5,)
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5)),
          Column(
            children: [
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 221, 217, 217),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 50,
                  width: 50,
                  child: Icon(Icons.groups,size: 30,),
                ),
                title: Text("Full stack developers",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Divider(thickness: 0.5,)
            ],
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5)),
          Column(
            children: [
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 47,
                  width: 47,
                  child: Icon(Icons.announcement,size: 30,),
                ),
                title: Text("Announcements",style: TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text("~meta: found an issue with..."),
                trailing: Text("30.12.2023"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}