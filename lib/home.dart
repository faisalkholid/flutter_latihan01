import 'dart:ui';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _list = ["Test1", "Test2", "Test3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://pbs.twimg.com/profile_images/932142986267328512/F9VmgZ6J.jpg'),
                minRadius: 40,
                maxRadius: 40,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi 👋",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Killua Zoldick",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(5)),
                child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(5)),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/Login');
                  },
                  child: Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 100,
            width: 360,
            child:
                ListView(scrollDirection: Axis.horizontal, children: <Widget>[
              Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.accessibility,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Skill",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ))),
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.article,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Item",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ))),
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.accessibility,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Skill",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ))),
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.accessibility,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Skill",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ))),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
