
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
       children: [
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Hello ViLH', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
              Icon(Icons.notifications),
            ],
          ),
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Good morning', style: TextStyle(fontSize: 15)),

            ],
          ),
      ]
    );
  }
}