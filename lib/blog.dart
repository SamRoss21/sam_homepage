import 'package:flutter/material.dart';
import 'package:sam_homepage/myBar.dart';
import 'sidebar.dart';

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const myBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [const SideBar(),
          Expanded(
            child: Container(
              height: 200,
              margin: const EdgeInsets.only(left: 50, right: 250, top: 50),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.white,
              ),
              child: const Padding(padding:EdgeInsets.all(20), child: Text("Coming Soon!", style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 51, 10, 111))),),
            ),
          ),
        ],
      ),
    );
  }
}