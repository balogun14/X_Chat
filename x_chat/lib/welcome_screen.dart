import 'package:flutter/material.dart';
import 'Screens/login.dart';
import 'Screens/sign_up.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('images/x_chat.png'),
            ),
            SizedBox(
              height: 10,
              width: 150,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SingUp()
                    ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFDA70D6),
              ),
              child: const Text(
                "Sign up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w100),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()
                      ));

                },
                style:
                    ElevatedButton.styleFrom(backgroundColor: Color(0xFF30D5C8)),
                child: Text(
                  "Log in",
                  style: TextStyle(fontWeight: FontWeight.w200),
                )),
          ],
        ),
      ),
    ));
  }
}
