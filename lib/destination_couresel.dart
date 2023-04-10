import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DestinationCouresel extends StatefulWidget {
  const DestinationCouresel({Key? key}) : super(key: key);

  @override
  State<DestinationCouresel> createState() => _DestinationCoureselState();
}

class _DestinationCoureselState extends State<DestinationCouresel> {
  int _current = 0;
  final List<String> images = [
    'assets/images/african-kids.jpg',
    'assets/images/Child-Poverty.jpg',
    'assets/images/Children-collecting-recycable-rubbish-.jpg',
    'assets/images/clothing.jpg',
    'assets/images/ghana.jpg',
    'assets/images/giving.jpg',
    'assets/images/hope.jpg',
    'assets/images/HungryChildren.jpg',
    'assets/images/Zimbabwe.jpg',
    'assets/images/Kibera_slum_Nairobi.jpg',
    'assets/images/global_post_working.jpg',
  ];
  final List<String> title = [];

  List<Widget> generateImagesTiles(){
    return images.map((element) => ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(element, fit: BoxFit.cover,)
    )).toList();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 500,
      child: Stack(
        children: [
          CarouselSlider(
            items: generateImagesTiles(),
            options: CarouselOptions(
              enlargeCenterPage: true,
              autoPlay: true,
              viewportFraction: 1,
            ),
          ),
        ],
      ),
    );
  }
}
