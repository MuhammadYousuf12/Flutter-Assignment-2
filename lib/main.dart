import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/bg6.jpg'),
              fit: BoxFit.cover,
            )),
            child: Center(
              child: Container(
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/logo.png'),
                      width: 180,
                      height: 180,
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily:
                            "'Google Sans','Noto Sans Myanmar UI',arial,sans-serif",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email or phone',
                        ),
                        style: TextStyle(fontSize: 16),
                        cursorWidth: 1,
                        cursorColor: Colors.black,
                        cursorHeight: 23,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Enter your password',
                            suffix: Icon(Icons.visibility)),
                        obscureText: true,
                        cursorWidth: 1,
                        cursorColor: Colors.black,
                        cursorHeight: 23,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Forgot password?",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xff1a73e8),
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 0.6,
                          // letterSpacing: .0107142857,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 100,
                        height: 35,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Log In',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                          width: 100,
                          height: 35,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('Sign Up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
