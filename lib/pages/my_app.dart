
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../apps/router/router.dart';
import 'category/category_page.dart';
import 'home/home_page.dart';
import 'product/product_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return  MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: RouterCustom.router,
      );
  }
}