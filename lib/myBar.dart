import 'package:flutter/material.dart';
import 'publications.dart';
import 'home.dart';
import 'cv.dart';
import 'blog.dart';

class myBar extends StatelessWidget implements PreferredSizeWidget{
  const myBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color.fromARGB(255, 51, 10, 111),
        automaticallyImplyLeading: false,
        toolbarHeight: 75,
        title:
            Text("Sam H. Ross", style: TextStyle(fontWeight: FontWeight.bold)),
        titleSpacing: 250,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(pageBuilder: (_, __, ___) => Home()),
                );
              },
              child: Text("About Me"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(pageBuilder: (_, __, ___) => Publications()),
                );
              },
              child: Text("Publications"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(pageBuilder: (_, __, ___) => Blog()),
                );
              },
              child: Text("Blog"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 250.0),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(pageBuilder: (_, __, ___) => CV()),
                );
              },
              child: Text("CV"),
            ),
          ),
        ]);
  }
}
