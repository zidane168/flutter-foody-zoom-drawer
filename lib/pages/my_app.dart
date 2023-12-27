
import 'package:flutter/material.dart';
import 'package:foody/provider/like_provider.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

import '../apps/router/router.dart';
import 'category/category_page.dart';
import 'home/home_page.dart';
import 'product/product_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
      return  ChangeNotifierProvider(
        create: (BuildContext context) => LikeProvider(),   // cai nay phai extends ChangeNotifier (Material)
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: RouterCustom.router,
        ),
      );
  }
}