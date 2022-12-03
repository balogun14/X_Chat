import 'package:flutter/material.dart';

import 'chat_page.dart';

class SingUp extends StatefulWidget {
  const SingUp({Key? key}) : super(key: key);

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    labelText: 'Name',
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  controller: numberController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      labelText: 'Phone Number'),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              //   child: TextField(
              //     textAlign: TextAlign.center,
              //     obscureText: true,
              //     controller: passwordController,
              //     decoration: InputDecoration(
              //         border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(50)),
              //         labelText: 'password'),
              //   ),
              // ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder:(context) => const ChatPage()
                          ));
                          print(nameController.text);
                          print(passwordController.text); },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF30D5C8),
                        ),
                        child: const Text('Sign Up')),
                  ],
                ),              ),
              // Row(
              //   children: <Widget>[
              //     Text('Does not have account'),
              //     TextButton(onPressed: (){},
              //       child: Text('Sign in', style: TextStyle(fontSize: 20),),)
              //   ],
              //   mainAxisAlignment: MainAxisAlignment.center,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
