import 'package:flutter/material.dart';

class Trailers extends StatelessWidget {
  const Trailers({super.key});

  Widget trailer({required String image, required String text,required String text2}){
    return Row(
      children: [
        Container(
            width: 150,
            height: 120,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(
              "assets/images/$image.jpg",
              fit: BoxFit.cover,
            )),
        const SizedBox(width: 20,),
        SizedBox(
          height: 120,
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                text2,
                style: const TextStyle(color: Colors.grey),
              ),
              Chip(
                visualDensity: VisualDensity.compact,
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                label: const Text(
                  "Update",
                  style: TextStyle(color: Color(0xFF820FE1)),
                ),
                color: MaterialStateProperty.all(const Color(0xFF28191E)),
                padding: const EdgeInsets.all(0),
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            trailer(image: "trailers", text: "Trailer 3: Final", text2: "1m 45s"),
            const SizedBox(height: 15,),
            trailer(image: "trailers2", text: "Trailer 2", text2: "5m 45s"),
          ],
        ),
      ),
    );
  }
}