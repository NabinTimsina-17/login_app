import 'package:flutter/material.dart';
import 'package:login_app/screens/home_screen.dart';

TextStyle myStyle = const TextStyle(fontSize: 25);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;

  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: "UserName",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: myStyle,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          hintText: "Password",
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(32.0))),
    );

    final myloginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16.0),
        onPressed: () {
          if (username == "nabin" && password == "pass1234") {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen(username)));
          } else {
            print("Login Failed");
          }
        },
        child: const Text('Login', style: TextStyle(color: Colors.white, fontSize: 25)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.supervised_user_circle, size: 100),
                const SizedBox(
                  height: 10,
                ),
                usernameField,
                const SizedBox(
                  height: 20,
                ),
                passwordField,
                const SizedBox(
                  height: 10,
                ),
                myloginButton,
                const SizedBox(
                  height: 25,
                ),
                const Text('#FlutterWithNabin', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 25)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
