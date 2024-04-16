import 'package:flutter/material.dart';
import 'myBar.dart';
import 'sidebar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
              child: const Padding(padding:EdgeInsets.all(20), child: Text("I am a second year Ph.D. student at the University of Washington, advised by Ben Shapiro and Steve Tanimoto. My research interests are in interface design and CS education. I am particularly interested in developing interface design tools with a focus on end-user modifiability. I hold a BA in Computer Science from Barnard College, and am a recipient of the NSF Graduate Research Fellowship.", style: TextStyle(fontSize: 17),),),
            ),
          ),
        ],
      ),
    );
  }
}
