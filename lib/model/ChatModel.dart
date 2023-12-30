// ignore_for_file: file_names

class ChatModel {
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
  bool isSeen;
  ChatModel({
    this.name="",
    this.icon="",
    this.isGroup=false,
    this.time="",
    this.currentMessage="",
    this.isSeen=false
  });
}