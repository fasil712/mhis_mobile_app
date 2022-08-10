import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ItemCarousel extends StatefulWidget {
  const ItemCarousel({Key? key}) : super(key: key);

  @override
  State<ItemCarousel> createState() => _ItemCarouselState();
}

class _ItemCarouselState extends State<ItemCarousel> {
  int currentIndex = 0;
  List<String> images = [
    "assets/carousel_image/image01.jpg",
    "assets/carousel_image/image02.jpg",
    "assets/carousel_image/image03.jpg",
    "assets/carousel_image/image04.jpg",
    "assets/carousel_image/image05.jpg"
  ];
  List<String> names = [
    "Month 01",
    "Month 02",
    'Month 03',
    'Month 04',
    "Month 05"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      child: Stack(
        fit: StackFit.loose,
        children: [
          CarouselSlider.builder(
              itemCount: images.length,
              itemBuilder: (context, index, next) {
                return ClipRRect(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(
                        images[index],
                      ),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    )),
                  ),
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(32), bottom: Radius.circular(32)),
                );
              },
              //items: ,
              options: CarouselOptions(
                  autoPlay: true,
                  height: 250,
                  aspectRatio: 18 / 10,
                  viewportFraction: 1,
                  initialPage: 0,
                  reverse: false,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  pageSnapping: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 4000),
                  pauseAutoPlayOnTouch: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, next) {
                    setState(() {
                      currentIndex = index;
                    });
                  })),
          AspectRatio(
            aspectRatio: 18 / 10,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 180.0),
                child: Column(
                  children: [
                    Text(
                      names[currentIndex],
                      style: const TextStyle(
                          decoration: TextDecoration.none,
                          color: Color.fromARGB(255, 8, 69, 235),
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
