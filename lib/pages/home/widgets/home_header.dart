import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Hello Vị', style: TextStyle(fontSize: 20, color: Colors.blue),),
              Icon(Icons.notifications),
            ],
          ),
          Row(
            children: [
              Text("Good Morning"),
            ],
          )
        ],
    );
  }

}