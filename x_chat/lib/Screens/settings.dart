import 'package:flutter/material.dart';
import '../models/chatMessage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
            padding: EdgeInsets.only(left: 16,right: 16,top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
           Text(
            "Settings",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          )
          ],
        ),
        ),
            ),
            Padding(padding: EdgeInsets.only(top: 50,left: 30,right: 26),),
            Row(
              children: [
                CircleAvatar(
                  child:Icon(Icons.camera_alt_outlined),
                  backgroundImage: AssetImage("images/awwal.JPG"),
                  backgroundColor: Colors.black.withOpacity(1),
                  maxRadius: 40,
                ),
                SizedBox(width: 25,),
                Expanded(child: TextFormField(
                  decoration:  const InputDecoration(
                    hintText: "do you want to change your name",
                    labelText: 'Name'
                  ),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
