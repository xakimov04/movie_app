import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/pages/avatar_page.dart';

class MoviePage extends StatelessWidget {
  final String image1;
  final String image2;
  final String baho1;
  final String baho2;
  const MoviePage(
      {super.key,
      required this.image1,
      required this.image2,
      required this.baho1,
      required this.baho2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(children: [
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                image1 == "1" ? Navigator.push(context, MaterialPageRoute(builder: (context) => AvatarPage(),)) : null;
              },
              child: Container(
                  width: 160,
                  height: 220,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    "assets/images/$image1.jpg",
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                width: 40,
                height: 25,
                decoration: BoxDecoration(
                  color: const Color(0xFF820FE1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  baho1,
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ]),
          Stack(children: [
            InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {},
              child: Container(
                  width: 160,
                  height: 220,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    "assets/images/$image2.jpg",
                    fit: BoxFit.fill,
                  )),
            ),
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                width: 40,
                height: 25,
                decoration: BoxDecoration(
                  color: const Color(0xFF820FE1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  baho2,
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
