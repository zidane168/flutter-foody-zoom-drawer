import 'package:flutter/material.dart';
import 'package:foody2/apps/models/article.dart';
import 'package:foody2/apps/router/router_name.dart';
import 'package:foody2/apps/mockup/item_mockup.dart';
import 'package:foody2/provider/like_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:transparent_image/transparent_image.dart';

class LikePage extends StatelessWidget {
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {

    List<int> idListLike = context.watch<LikeProvider>().listLike;
    List<Article> data = dataMockup.where((element) => idListLike.contains(element.id)).toList();

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Faviour"),
          actions: [
            IconButton(
                onPressed: () {
                  context.read<LikeProvider>().onDeleteAll();
                },
                icon: const Icon(Icons.delete, color: Colors.white),
            ) ,
          ],
        ),
         body: data.isNotEmpty ? ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            itemCount: data.length,

            itemBuilder: (BuildContext context, int index) {
                return AspectRatio(
                    aspectRatio: 5/2,
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          print(data[index].id);
                          context.read<LikeProvider>().onDelete(data[index].id);
                        },
                        child: FadeInImage.memoryNetwork(
                          fit: BoxFit.cover,
                          placeholder: kTransparentImage,
                          image:  data[index].image,
                        ),
                      ),
                    ),
                );
            } ,
            separatorBuilder: (BuildContext context, int index) { // tao xen ke
              return const SizedBox (height: 10,);
            },
         ) : const Padding(
           padding:  EdgeInsets.all(10.0),
           child:  Center(
              child:  Text('Your Faviour List Empty!', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.redAccent)),
           ),
         ),
    );
  }

}