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
    "assets/backgroundimage.jpg",
    "assets/food_list/month02.jpg",
    "assets/food_list/month03.jpg",
    "assets/food_list/month04.jpg",
    "assets/food_list/month05.jpg",
    "assets/food_list/month06.jpg",
    "assets/food_list/month07.jpg",
    "assets/food_list/month08.jpg",
    "assets/food_list/month09.jpg"
  ];
  List<String> names = [
    "Month 01",
    "Month 02",
    'Month 03',
    'Month 04',
    'Month 05',
    'Month 06',
    "Month 07",
    "Month 08",
    "Month 09"
  ];
  // List<String> desc = [
  //   "Month 01 description",
  //   "Month 02 description",
  //   'Month 03 description',
  //   'Month 04 description',
  //   'Month 05 description',
  //   'Month 06 description',
  //   "Month 07 description",
  //   "Month 08 description",
  //   "Month 09 description"
  // ];
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
                          fontSize: 20.0),
                    ),
                    // const SizedBox(height: 5.0,),
                    // Text(desc[currentIndex],
                    // style: const TextStyle(
                    //       decoration: TextDecoration.none,
                    //       color: Color.fromARGB(255, 177, 194, 240),
                    //       fontWeight: FontWeight.normal,
                    //       fontSize: 14.0),)
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