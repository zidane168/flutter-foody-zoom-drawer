import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class ProductPage extends StatelessWidget {

  String? id;
  ProductPage({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      child: Column(
        children: [
          Expanded(
              child: SizedBox(
                width: double.infinity,
                child: FadeInImage.memoryNetwork(
                    fit: BoxFit.fill,
                    placeholder: kTransparentImage,
                    image: 'https://images.foody.vn/res/g101/1001217/prof/s640x400/foody-upload-api-foody-mobile-co-772aaadd-211230181601.jpeg',
                ),
              ),
          ),
          Expanded(
            flex: 2,
            child:  Padding(
              padding:  const EdgeInsets.all(10.0),
              child:  Column(
                children: [
                  Text(id.toString(), style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue)),
                  const Text(
                      'Description of Food, Description of Food, Description of Food, '
                      'Description of Food, Description of Food, Description of Food, '
                      'Description of Food, Description of Food, Description of Food, '
                      'Description of Food, Description of Food, Description of Food, ',
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