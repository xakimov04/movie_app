import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../modules/movie_.dart';

class More extends StatelessWidget {
  const More({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              for (var i = 1; i <= 16; i++)
                MoviePage(
                    image1: i.toString(),
                    image2: (i + 2).toString(),
                    baho1: (10 - i * 0.2).toString().substring(0, 3),
                    baho2: (9.9 - i * 0.2).toString().substring(0, 3)),
            ],
                ),
        ),
    );
  }
}
