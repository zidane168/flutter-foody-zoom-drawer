import 'package:flutter/material.dart';
import 'package:foody2/pages/home/widgets/home_header.dart';
import 'package:foody2/pages/home/widgets/home_list_category.dart';
import 'package:foody2/pages/home/widgets/home_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Foody"),
        ),
        body: const Padding(
          padding:  EdgeInsets.all(12.0),
          child:  Column(
            children: [
                HomeHeader(),
                SizedBox(height: 10.0),
                HomeSearch(),
                SizedBox(height: 10.0),
                HomeListCategory(),
            ],
          ),
        )
    );
  }

}