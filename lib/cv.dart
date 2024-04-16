import 'package:flutter/material.dart';
import 'package:sam_homepage/myBar.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'sidebar.dart';

class CV extends StatelessWidget {
  const CV({super.key});

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
              clipBehavior: Clip.antiAlias,
              width: 600,
              margin: const EdgeInsets.only(left: 50, right: 250, top: 50, bottom: 50),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child:SfPdfViewer.asset('assets/SP2024.pdf'),
            ),
          ),
        ],
      ),
    );
  }
}
