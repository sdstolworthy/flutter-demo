import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget {
  Widget image(ImageModel image) {
    return Image.network(image.url);
  }

  Widget container(ImageModel image) {
    return Container(
      child: this.image(image),
      padding: const EdgeInsets.all(10.0),
    );
  }

  Widget build(context) {
    final list = new ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, int index) {
        return container(images[index]);
      },
    );
    return list;
  }

  final List<ImageModel> images;
  ImageList({this.images});
}
