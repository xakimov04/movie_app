import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/pages/commets.dart';
import 'package:movie_app/pages/explore.dart';
import 'package:movie_app/pages/more_like.dart';
import 'package:movie_app/pages/trailer.dart';

class AvatarPage extends StatefulWidget {
  const AvatarPage({super.key});

  @override
  State<AvatarPage> createState() => _AvatarPageState();
}

class _AvatarPageState extends State<AvatarPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  Widget chip(String text) {
    return Chip(
      visualDensity: VisualDensity.compact,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(color: Color(0xFF820FE1))),
      label: Text(
        text,
        style: TextStyle(color: Color(0xFF820FE1)),
      ),
      color: MaterialStateProperty.all(Color(0xFF14191E)),
      padding: EdgeInsets.all(0),
    );
  }

  Widget _person(
      {required String image, required String text, required String text2}) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 21,
            backgroundImage: AssetImage("assets/images/img_$image.png"),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                text2,
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/1.jpg",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.cast,
                  color: Colors.white,
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Avatar: The Way of\nWater",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Row(
                        children: [
                          Icon(
                            CupertinoIcons.bookmark,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            CupertinoIcons.paperplane,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        Icons.star_half,
                        color: Color(0xFF820FE1),
                      ),
                      const Text(
                        "9.8",
                        style: TextStyle(color: Color(0xFF820FE1)),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF820FE1),
                        size: 15,
                      ),
                      const Text(
                        "2022",
                        style: TextStyle(color: Colors.white),
                      ),
                      chip("13+"),
                      chip("United States"),
                      chip("Subtitle"),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFF820FE1)),
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.play_circle,
                                size: 18,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Play",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                BorderSide(color: Color(0xFF820FE1))),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {},
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.file_download_outlined,
                                size: 18,
                                color: Color(0xFF820FE1),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Download",
                                style: TextStyle(
                                    color: Color(0xFF820FE1), fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "\nGenre: Action, Superhero, Science Fiction, Romance, Thriller, ...\n\n",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        TextSpan(
                            text:
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do. Utenim ad minim veniam, quis nostrud exercitation ullamco laborisnisi ut aliquip ex ea commodo consequat...",
                            style: TextStyle(fontSize: 11)),
                        TextSpan(
                            text: "\tView More",
                            style: TextStyle(color: Color(0xFF820FE1)))
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _person(
                            image: "0",
                            text: "James\nCameron",
                            text2: "Director"),
                        _person(
                            image: "1",
                            text: "Sam\nWorthington",
                            text2: "Cast"),
                        _person(
                            image: "2", text: "Zoe\nSaldana", text2: "Cast"),
                        _person(
                            image: "3", text: "John\nKhalib", text2: "Artist"),
                      ],
                    ),
                  ),
                  TabBar(
                    controller: _tabController,
                    indicatorSize: TabBarIndicatorSize.tab,
                    tabs: const [
                      Tab(text: "Trailers"),
                      Tab(text: "More Like This"),
                      Tab(text: "Comments"),
                    ],
                  ),
                  SizedBox(
                    height: 500,
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        Trailers(),
                        More(),
                        Commet(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


