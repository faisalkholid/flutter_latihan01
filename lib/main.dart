import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.black87,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Container(
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: Text(
                      "Please login to continue life",
                      style: TextStyle(
                          color: Colors.white38,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.supervised_user_circle,
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1.5, color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1.5, color: Colors.amber),
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
                          prefixIcon: Icon(
                            Icons.remove_red_eye_rounded,
                            color: Colors.white,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1.5, color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1.5, color: Colors.amber),
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
                      child: GestureDetector(
                        child: TextButton(
                          onPressed: () {},
                          child: Text("Log in"),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            primary: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
