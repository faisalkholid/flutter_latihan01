import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
            ),
            Container(
              child: const Text(
                "Login",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Container(
              child: const Text(
                "Please login to continue",
                style: TextStyle(
                    color: Colors.white38,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.supervised_user_circle,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1.5, color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.5, color: Colors.amber),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(),
                    hintText: "User name",
                    hintStyle: TextStyle(color: Colors.white30)),
                controller: TextEditingController(),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.remove_red_eye_rounded,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(width: 1.5, color: Colors.white),
                        borderRadius: BorderRadius.circular(10)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.5, color: Colors.amber),
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(),
                    hintText: "*********",
                    hintStyle: TextStyle(color: Colors.white30)),
                controller: TextEditingController(),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 60,
              width: 400,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: TextButton(
                  onPressed: () {},
                  child: Text("Log in"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.amber,
                    primary: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: 400,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text("Back"),
                  style: TextButton.styleFrom(
                      primary: Colors.amber,
                      textStyle: TextStyle(fontWeight: FontWeight.w400)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
