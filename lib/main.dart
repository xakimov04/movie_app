import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:movie_app/pages/explore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(50, 19, 28, 104),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 1;
  final List<Widget> _screens = [
    const Placeholder(),
    const ExplorePage(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: _screens[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 15.0,
              sigmaY: 15.0,
            ),
            child: BottomNavigationBar(
              selectedIconTheme:
              const IconThemeData(color: Colors.blue, size: 30),
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.black,
              elevation: 10,
              iconSize: 25,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  backgroundColor: Colors.black26,
                  icon: Icon(
                    Icons.home_filled,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.black26,
                  icon: Icon(
                    Icons.explore,
                  ),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.black26,
                  icon: Icon(
                    Icons.bookmark,
                  ),
                  label: 'My List',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.black26,
                  icon: Icon(
                    Icons.file_download_outlined,
                  ),
                  label: 'Downloads',
                ),
                BottomNavigationBarItem(
                  backgroundColor: Colors.black26,
                  icon: Icon(
                    Icons.person,
                  ),
                  label: 'Person',
                ),
              ],
              currentIndex: _selectedIndex,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
