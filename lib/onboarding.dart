import 'package:flutter/material.dart';
import 'package:latihan_flutter/login.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
          ),
          Center(
            child: Text(
              "Welcome home",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              "Where you are comfortable and home",
              style:
                  TextStyle(color: Colors.amber, fontWeight: FontWeight.normal),
            ),
          ),
          Spacer(),
          Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Login');
                  },
                  child: Text(
                    "Open the door",
                    style: (TextStyle(color: Colors.amber)),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white10,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                          //to set border radius to button
                          borderRadius: BorderRadius.circular(5)),
                      fixedSize: const Size(350, 60),
                      side: BorderSide(width: 2, color: Colors.amber),
                      textStyle: TextStyle(fontSize: 15)))),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
