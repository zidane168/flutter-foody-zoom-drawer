import 'package:flutter/material.dart';
import 'package:foody/apps/router/router_name.dart';
import 'package:foody/mockup/item_mockup.dart';
import 'package:go_router/go_router.dart';
import 'package:transparent_image/transparent_image.dart';

class HomeListCategory extends StatelessWidget {
  const HomeListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
        child:  GridView.builder(
            itemCount: Datas.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 50,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
            ),
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  context.goNamed(RouterName.PRODUCT, pathParameters: {
                    'id': "Cua Hoàng Đế",
                    'description': "Description",
                  });
                },
                child: Column(
                  children: [
                    Container(
                      height: 132, // Set the desired height for the container
                      clipBehavior: Clip.hardEdge,  // de bo tron goc san phẩm
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      // 'https://images.foody.vn/res/g101/1001217/prof/s640x400/foody-upload-api-foody-mobile-co-772aaadd-211230181601.jpeg'
                      // https://p1.hiclipart.com/preview/103/117/313/fried-chicken-biryani-fried-rice-vegetarian-cuisine-pilaf-indian-cuisine-vegetable-food-png-clipart.jpg
                      child: FadeInImage.memoryNetwork(
                        placeholder: kTransparentImage,
                        fit: BoxFit.cover,
                        image: Datas[index],

                      ),
                    ),

                    const SizedBox(height: 10),
                    const Text('Lẩu Cua Đồng, thơm ngon bổ dưỡng', maxLines: 1, overflow: TextOverflow.ellipsis,)
                  ],
                ),
              );
            }
        ),
    );
  }

}