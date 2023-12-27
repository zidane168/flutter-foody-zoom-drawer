import 'package:flutter/material.dart';
import 'package:foody/apps/router/router_name.dart';
import 'package:foody/apps/mockup/item_mockup.dart';
import 'package:go_router/go_router.dart';
import 'package:transparent_image/transparent_image.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      itemCount: Datas.length,

      itemBuilder: (BuildContext context, int index) {
        return Material(
          child: InkWell(
            onTap: () {
              context.goNamed(RouterName.CATEGORY_PRODUCT, extra: {
                'id_extra': '188, Tôm Hùm Bông',
                'description_extra': 'description'
              });
            },
            child: AspectRatio(
              aspectRatio: 5/2,
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: FadeInImage.memoryNetwork(
                  fit: BoxFit.cover,
                  placeholder: kTransparentImage,
                  image:  Datas[index],
                ),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) { // tao xen ke
        return const SizedBox (height: 10,);
      },
    );
  }

}