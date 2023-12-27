import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foody/apps/router/router_name.dart';
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
                context.goNamed(RouterName.PRODUCT, pathParameters: {
                  'id': "Từ menu",
                  "description": "description"
                });
              },
              leading: const Icon(
                CupertinoIcons.calendar,
                color: Colors.white,
              ),
              title:const Text("Product Screen", style: TextStyle(fontSize: 13, color: Colors.white)),
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
            ListTile(
              onTap: () {
                context.goNamed(RouterName.CATEGORY_PRODUCT, extra: {
                  'id_extra': "Từ menu (extra)",
                  "description_extra": "description"
                });
              },
              leading: const Icon(
                CupertinoIcons.square_favorites,
                color: Colors.white,
              ),
              title: const Text("Category Product Screen", style: TextStyle(fontSize: 13, color: Colors.white)),
            ),
          ],
        )
      )
    );
  }

}