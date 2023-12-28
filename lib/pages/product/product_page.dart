import 'package:flutter/material.dart';
import 'package:foody2/apps/mockup/item_mockup.dart';
import 'package:foody2/apps/models/article.dart';
import 'package:foody2/provider/like_provider.dart';
import 'package:like_button/like_button.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductPage extends StatelessWidget {

  String? id;
  Article? article;
  ProductPage({super.key, this.id,   this.article});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
          children: [
            Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Stack(
                    children : [
                      Positioned.fill(
                          child: SizedBox(
                          width: double.infinity,
                            child: Hero(
                              tag: 'tag-${article?.id}', // giong với o ngoai de có thể làm hieu ứng chuyen qua lai dc, luu y id ko dc trung
                              child: FadeInImage.memoryNetwork(
                                fit: BoxFit.fill,
                                placeholder: kTransparentImage,
                                image: article?.image ?? '',
                              ),
                            ),
                          ),
                      ),
        
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child:  Consumer<LikeProvider>(
                            builder: (BuildContext context, LikeProvider value, Widget? child)  => LikeButton(
                              isLiked: value.listLike.contains(article?.id), // muc dich Consumer la thong bao cho nhung noi cap nhat theo giua hai man hinh voi nhau
                              onTap: (like) {
                                int id = article?.id ?? 0;
                                context.read<LikeProvider>().onLike(id);
                                return Future.value(!like);
                              },
                            ),
                          ),

                            /*
                              child:  LikeButton(
                              isLiked: true,
                              onTap: (like) {
      
                                int id = article?.id ?? 0;
                                context.read<LikeProvider>().onLike(id);
                                return Future.value(!like);
                              },
                            ) */
                      ),
                    ],
                  ),
                ),
            ),
            Expanded(
              flex: 2,
              child:  Padding(
                padding:  const EdgeInsets.all(10.0),
                child:  Column(
                  children: [
                    Text( article?.title ?? 'Title', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
                    Text( article?.description ?? 'Description',
                                style: TextStyle(fontSize: 15), textAlign: TextAlign.justify,)
                  ],
                ),
              )
            ),
          ],
      ),
    );
  }

}