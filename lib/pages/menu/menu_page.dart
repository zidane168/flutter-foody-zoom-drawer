import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foody2/apps/router/router_name.dart';
import 'package:go_router/go_router.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             ListTile(
               onTap: () {
                context.goNamed(RouterName.HOME);
              },
              leading: const Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: const Text("Home Screen", style: TextStyle(fontSize: 13, color: Colors.white)),
            ),
            ListTile(
              onTap: () {
                context.goNamed(RouterName.LIKE);
              },
              leading: const Icon(
                CupertinoIcons.square_favorites,
                color: Colors.white,
              ),
              title:const Text("My Faviour Screen", style: TextStyle(fontSize: 13, color: Colors.white)),
            ),
            ListTile(
              onTap: () {
                context.goNamed(RouterName.CATEGORY);
              },
              leading: const Icon(
                CupertinoIcons.settings,
                color: Colors.white,
              ),
              title: const Text("Category Screen", style: TextStyle(fontSize: 13, color: Colors.white)),
            ),
           /*  ListTile(
              onTap: () {
                context.goNamed(RouterName.SETTING );
              },
              leading: const Icon(
                CupertinoIcons.square_favorites,
                color: Colors.white,
              ),
              title: const Text("Setting Screen", style: TextStyle(fontSize: 13, color: Colors.white)),
            ),
            */
          ],
        )
      )
    );
  }

}