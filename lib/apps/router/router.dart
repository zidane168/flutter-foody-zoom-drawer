import 'package:flutter/material.dart';
import 'package:foody2/apps/models/article.dart';

import 'package:foody2/pages/category/category_page.dart';
import 'package:foody2/pages/home/home_page.dart';
import 'package:foody2/pages/like/like_page.dart';
import 'package:foody2/pages/product/product_page.dart';
import 'package:foody2/pages/root_page.dart';
import 'package:go_router/go_router.dart';

import 'router_name.dart';

class RouterCustom {
  static final GoRouter router = GoRouter(

    initialLocation: '/',
    routes: <RouteBase>[
      ShellRoute(     // dùng ShellRoute de co the dung dc Router
          builder: (context, state, child) {
            return RootPage(child: child);
          },
          routes: [
            GoRoute(
              name: RouterName.HOME,
              path: '/',
              builder: (BuildContext context, GoRouterState state) {
                return const HomePage(); // RootPage();  dung root page cho nay se ko dung Router dc
              },
              routes: <RouteBase>[
                GoRoute(
                  name: RouterName.PRODUCT,
                  // path: 'product/:id/:description',
                  path: 'product',
                  builder: (BuildContext context, GoRouterState state) {
                    /* Map data = state.pathParameters;
                    return  ProductPage(id: data['id']);
                     */

                    Article article = state.extra as Article;
                    return ProductPage(article: article);
                  },
                ),
              ],
            ),

            GoRoute(
              name: RouterName.CATEGORY,
              path: '/category',
              builder: (BuildContext context, GoRouterState state) {
                return const CategoryPage();
              },
              routes: <RouteBase>[
                GoRoute(
                  name: RouterName.CATEGORY_PRODUCT,
                  path: 'product',
                  builder: (BuildContext context, GoRouterState state) {
                      Article article = state.extra as Article;
                      return ProductPage(article: article);

                    // Map data = state.extra as Map;
                    // return  ProductPage(id:  data['id_extra'].toString());
                  },
                ),
              ],
            ),


            GoRoute(
              name: RouterName.LIKE,
              path: '/like',
              builder: (BuildContext context, GoRouterState state) {
                return const LikePage();
              },
              /*
              routes: <RouteBase>[
                GoRoute(
                  name: RouterName.CATEGORY_PRODUCT,
                  path: 'product',
                  builder: (BuildContext context, GoRouterState state) {
                    Map data = state.extra as Map;

                    return  ProductPage(id:  data['id_extra'].toString());
                  },
                ),
              ],*/
            ),
          ],
      )

    ],
  );
}