import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:foody/pages/home/home_page.dart';
import 'package:foody/pages/menu/menu_page.dart';

class RootPage extends StatelessWidget {

  Widget child;   // them cai nay dung cho ShellRouter on Router
  RootPage({super.key, required this.child});  // just can use on ios simulator, android simulator cannot

  final ZoomDrawerController _zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ZoomDrawer(
      controller: _zoomDrawerController,
      style: DrawerStyle.defaultStyle,
      menuScreen: MenuPage(),   // man hinh drawer
      mainScreen: child,      // nho truyen child vao   // man hinh chinh se hien thi,
      borderRadius: 24.0,
      showShadow: true,
      angle: -12.0,
      // slideWidth: MediaQuery.of(context).size.width*.65,
      openCurve: Curves.fastOutSlowIn,
      closeCurve: Curves.bounceIn,
    );

  }

}