import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HeaderSlider extends StatelessWidget {
  const HeaderSlider({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: images.length,
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.0,
        enlargeCenterPage: true,
      ),
      itemBuilder: (context, index, realIdx) {
        return Container(
          child: Center(
              child:
                  Image.network(images[index], fit: BoxFit.cover, width: 1000)),
        );
      },
    );
  }
}
