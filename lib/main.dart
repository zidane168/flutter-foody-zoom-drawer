import 'package:flutter/material.dart';
import 'package:foody2/apps/router/router.dart';
import 'package:foody2/pages/home/home_page.dart';
import 'package:foody2/provider/like_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create: (BuildContext context) => LikeProvider(), // cai nay phai extends ChangeNotifier (Material), phai co de co the call dc provider
      child: MaterialApp.router(
        title: 'Restaurant',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        routerConfig: RouterCustom.router,
      ),
    );
  }
}
