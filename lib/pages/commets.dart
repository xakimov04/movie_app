import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Commet extends StatelessWidget {
  const Commet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "24.6K Comments",
                  style: TextStyle(
                      color: CupertinoColors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "See all",
                  style: TextStyle(color: Color(0xFF820FE1), fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/icons/commet.png"),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Kirstin Watson",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Icon(
                  CupertinoIcons.ellipsis_circle,
                  color: Colors.grey,
                  size: 25,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.",
              style: TextStyle(color: Color(0xFF9D9EA2), fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Color(0xFFFA9B14),
                  size: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "938",
                  style: TextStyle(
                    color: Color(0xFF9D9EA2),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text("3 days ago",
                    style: TextStyle(
                      color: Color(0xFF9D9EA2),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
