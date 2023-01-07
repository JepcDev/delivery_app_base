import 'package:flutter/material.dart';
import 'package:delivery_app_base/models/carousel_model.dart';

class ShowCategory extends StatelessWidget {
  final CarouselModel carruselImages;
  const ShowCategory({super.key, required this.carruselImages});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        elevation: 0,
        title: Text(carruselImages.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),

                child: FadeInImage(
                  placeholder: const AssetImage("assets/loading1.gif"),
                  image: AssetImage(carruselImages.img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(carruselImages.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    carruselImages.description,
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
