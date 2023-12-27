import 'package:flutter/material.dart';

import 'widgets/home_header.dart';
import 'widgets/home_list_category.dart';
import 'widgets/home_search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Material(
      child: Padding(
        padding:   EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
            children: [
              HomeHeader(),
              SizedBox(height: 10,),
              HomeSearch(),
              SizedBox(height: 10,),
              HomeListCategory(),
            ],
        ),
      ),
    );
  }


}
