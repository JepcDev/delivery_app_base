
import 'package:delivery_app_base/screens/show_category.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:delivery_app_base/models/carousel_model.dart';

import '../data/carousel_data.dart';

class CarruselScreen extends StatefulWidget {
  const CarruselScreen({super.key});

  @override
  State<CarruselScreen> createState() => _CarruselScreenState();
}

class _CarruselScreenState extends State<CarruselScreen> {
  // const CarruselScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        elevation: 0,
        centerTitle: true,
        title: const Text("Carousel Slider"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          CarouselSlider.builder(
            itemCount: carruselImgData.length,
            itemBuilder: (context, index, realIndes){
              return CardImg(carruselImgs: carruselImgData[index],);
            },
            options: CarouselOptions(
              height: 300,
              autoPlay: true,
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 2),
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}

// DEV CardImg
class CardImg extends StatelessWidget {

  final CarouselModel carruselImgs;
  const CardImg({super.key, required this.carruselImgs});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: (){
            carruselImgs.copy();
            Navigator.push(
              context, MaterialPageRoute(builder: (context)=> ShowCategory(carruselImages: carruselImgs,) )
            );
          },
          child: FadeInImage(
            placeholder: const AssetImage("assets/loading1.gif"),
            image:AssetImage(
              carruselImgs.img
            ) ,
            fit: BoxFit.cover,
          ),
        )
      ),
    );
  }
}
