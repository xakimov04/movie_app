import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/modules/movie_.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                    ),
                    child: SizedBox(
                      width: 260,
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFF1E1E28),
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 10),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFF28191E),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset("assets/icons/filter.png",
                            color: Color(0xFF820FE1)),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              for (var i = 1; i <= 16; i++)
                MoviePage(
                    image1: i.toString(),
                    image2: (i + 2).toString(),
                    baho1: (10 - i * 0.2).toString().substring(0, 3),
                    baho2: (9.9 - i * 0.2).toString().substring(0, 3)),
            ],
          ),
        ),
      ),
    );
  }
}
