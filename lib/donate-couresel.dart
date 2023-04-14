import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DonateMessageCouresel extends StatefulWidget {
  const DonateMessageCouresel({Key? key}) : super(key: key);

  @override
  State<DonateMessageCouresel> createState() => _DonateMessageCoureselState();
}

class _DonateMessageCoureselState extends State<DonateMessageCouresel> {
  int current = 0;
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

  List<Widget> generatedDonateMasseges(){
    return images.map((element) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(element, fit: BoxFit.cover,)
    )).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: MediaQuery.of(context).size.height*0.3,

      child: Stack(
        children: [
          CarouselSlider(
            items: generatedDonateMasseges(),
            options: CarouselOptions(
              autoPlayInterval: Duration(seconds: 7),
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
