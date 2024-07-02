import 'package:flutter/material.dart';
import 'package:healthapp/premium.dart';

import 'categories.dart';



class Botnavi extends StatefulWidget {
  const Botnavi({super.key});

  @override
  State<Botnavi> createState() => _BotnaviState();
}


class _BotnaviState extends State<Botnavi> {


  int _index = 0;

  final pages = [
    categories(),
    premium(),
    categories()
  ];
  void tap(index)
  {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart),label: "Progress"),
          BottomNavigationBarItem(icon: Icon(Icons.alarm),label: "Reminder"),

        ],
        currentIndex: _index,
        onTap: tap,
        type: BottomNavigationBarType.fixed,
      ) ,
    );
  }
}
