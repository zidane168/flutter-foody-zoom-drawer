import 'package:flutter/material.dart';
import 'package:foody2/apps/router/router_name.dart';
import 'package:foody2/apps/mockup/item_mockup.dart';
import 'package:foody2/provider/like_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class HomeListCategory extends StatelessWidget {
  const HomeListCategory({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child:  GridView.builder(
          itemCount: dataMockup.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 30,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                context.goNamed(RouterName.PRODUCT, extra: dataMockup[index]);

                /* context.goNamed(RouterName.PRODUCT, pathParameters: {
                    'id': dataMockup[index].id.toString(),
                    'description': dataMockup[index].description,
                  });
                  */
              },
              child: Column(
                children: [
                  Container(
                    height: 102, // Set the desired height for the container
                    clipBehavior: Clip.hardEdge,  // de bo tron goc san phẩm
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Stack (    // de co the sap xep nhieu cai trong nhau trong màn hình
                      children: [
                        Positioned.fill(
                          child: Hero(
                            tag: 'tag-${dataMockup[index].id}',     // Dùng Hero và them tag giong y change bên detail de có hiệu ứng chuyển trang
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              fit: BoxFit.cover,
                              image: dataMockup[index].image,

                            ),
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Consumer<LikeProvider>(    //  KHI CO thay doi từ provider se rebuild lai cai LikeProvider này
                            builder: (BuildContext context, LikeProvider value, Widget? child) => LikeButton(
                              isLiked: value.listLike.contains(dataMockup[index].id),// like button co hieu ung dep
                              onTap: (like) {
                                context.read<LikeProvider>().onLike(dataMockup[index].id);    // thủ tuc provider truyen qua ben LikeProvider, call onLike
                                return Future.value(!like);   // phai return nha, ko return phai bao loi, neu de like se ko click dc
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),
                  Text(dataMockup[index].title, maxLines: 1, overflow: TextOverflow.ellipsis,)
                ],
              ),
            );
          }
      ),
    );
  }

}