import 'package:flutter/material.dart';

import '../models/models.dart';
import '../widgets/conversation_list.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
      name: "Bella",
      messageText: "Awesome Setup",
      imageURl: "images/bella.JPG",
      time: "Now",
    ),
    ChatUsers(
        name: "Cesare Murphy",
        messageText: "That's Great",
        imageURl: "images/cesare.jpeg",
        time: "Yesterday"),
    ChatUsers(
        name: "Crispy Henry",
        messageText: "Hey where are you?",
        imageURl: "images/crispy.png",
        time: "31 Mar"),
    ChatUsers(
        name: "Awwal",
        messageText: "Busy! Call me in 20 mins",
        imageURl: "images/awwal.JPG",
        time: "28 Mar"),
    ChatUsers(
        name: "Joe Hawkins",
        messageText: "Thankyou, It's awesome",
        imageURl: "images/joe.jpeg",
        time: "23 Mar"),
    ChatUsers(
        name: "katz Pena",
        messageText: "will update you in evening",
        imageURl: "images/katz.jpeg",
        time: "17 Mar"),
    ChatUsers(
        name: "kelvin Jones",
        messageText: "Can you please share the file?",
        imageURl: "images/kelvin.jpg",
        time: "24 Feb"),
    ChatUsers(
        name: "kevin Wick",
        messageText: "How are you?",
        imageURl: "images/kevin.jpeg",
        time: "18 Feb"),
    ChatUsers(
        name: "Manda Josh",
        messageText: "How are you boss?",
        imageURl: "images/manda.png",
        time: "18 Feb"),
    ChatUsers(
        name: "Ray Jor",
        messageText: "How are you bro?",
        imageURl: "images/ray.jpeg",
        time: "18 Feb"),
    ChatUsers(
        name: "Sandra katx",
        messageText: "How are you babe?",
        imageURl: "images/sandra.jpeg",
        time: "18 Feb"),
    ChatUsers(
        name: "Stef Jay",
        messageText: "How are you sir?",
        imageURl: "images/stef.jpeg",
        time: "18 Feb"),
    ChatUsers(
        name: "Tiffani Ceaser",
        messageText: "How are you doing?",
        imageURl: "images/tiffani.jpeg",
        time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
                child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Conversations',
                    style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  // Container(
                  //   padding:
                  //       EdgeInsets.only(left: 8, bottom: 2, right: 8, top: 2),
                  //   height: 30,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(30),
                  //       color: Colors.pink[50]),
                  //   child: Row(
                  //     children: [
                  //       Icon(
                  //         Icons.add,
                  //         color: Colors.pink,
                  //         size: 20,
                  //       ),
                  //       SizedBox(
                  //         width: 2,
                  //       ),
                  //       Text(
                  //         "Add New",
                  //         style: TextStyle(
                  //             fontSize: 14, fontWeight: FontWeight.bold),
                  //       )
                  //     ],
                  //   ),
                  // )
                ],
              ),
            )),
            Padding(
              padding: EdgeInsets.only(top: 16, left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100)),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURl,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ],
        ),

      ),
    );
  }
}
