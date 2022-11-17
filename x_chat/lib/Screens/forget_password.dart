import 'package:flutter/material.dart';
class Forget extends StatelessWidget {
  const Forget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Password(),
    );
  }
}
class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: SafeArea(child: Container(
        child: Center(child: Text('Why did you forget your Password',style: TextStyle(fontSize: 40,fontStyle: FontStyle.italic),)),
      ),

      )
      );
  }
}
