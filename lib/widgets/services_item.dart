import 'package:flutter/material.dart';
import 'package:pregmomcare/config/colors_constants.dart';

// ignore: must_be_immutable
class ServicesCard extends StatelessWidget {
  // the values we need
  final String image;
  final String name;
  final String desc;
  Function() onPressed;

  ServicesCard(
      {Key? key,
      required this.image,
      required this.name,
      required this.desc,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: AppColors.appbarBgColor,
                radius: 30,
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(
                    image,
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        name,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Text(
                        desc,
                        style: const TextStyle(
                            fontSize: 13, fontStyle: FontStyle.normal),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
