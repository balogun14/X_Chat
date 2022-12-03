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
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(left: 16,right: 16,top: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
           const Text(
            "Settings",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          )
          ],
        ),
        ),
            ),
            const Padding(padding: EdgeInsets.only(top: 50,left: 30,right: 26),),
            Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      child:const Icon(Icons.camera_alt_outlined),
                      backgroundImage: const AssetImage("images/awwal.JPG"),
                      backgroundColor: Colors.black.withOpacity(1),
                      maxRadius: 40,
                    ),
                    const SizedBox(width: 25,),
                    Expanded(child: TextFormField(
                      decoration:  const InputDecoration(
                          hintText: "do you want to change your name",
                          labelText: 'Name'
                      ),
                    )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
