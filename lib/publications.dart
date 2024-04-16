import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sam_homepage/myBar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'sidebar.dart';

class Publications extends StatelessWidget {
  const Publications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const myBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [SideBar(),
          Expanded(
            child: Container(
              height:500,
              margin: const EdgeInsets.only(
                  left: 50, right: 250, top: 50, bottom: 50),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                color: Colors.white,
              ),
              child: SingleChildScrollView(child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Padding(
                      padding: EdgeInsets.only(top:30, left:30, right:30),
                      child: Text.rich(
                        TextSpan(text:"Publications ", style:TextStyle(fontSize: 25),),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top:30, left:30, right:30),
                      child: Text.rich(
                        TextSpan(style:const TextStyle(fontSize: 15), children: <TextSpan>[
                          const TextSpan(text: "1. "),
                          const TextSpan(
                              text: ''' Sam Ross ''',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          const TextSpan(
                              text:
                                  ''', Nicole Sullivan, and Jina Yoon. 2023. Virtual Fidgets: Opportunities and Design Principles for Bringing Fidgeting to Online Learning. In Extended Abstracts of the 2023 CHI Conference on Human Factors in Computing Systems (CHI EA ’23), April 23–28, 2023, Hamburg, Germany. ACM, New York, NY , USA, 6 pages. '''),
                          TextSpan(text: "https://dl.acm.org/doi/10.1145/3544549.3585729", style: const TextStyle(color: Color.fromARGB(255, 94, 39, 176)), 
                          recognizer: TapGestureRecognizer()..onTap = () => launchUrl(Uri.parse('https://dl.acm.org/doi/10.1145/3544549.3585729')),)
                        ]),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top:30, left:30, right:30),
                      child: Text.rich(
                        TextSpan(style:const TextStyle(fontSize: 15), children: <TextSpan>[
                          const TextSpan(text: "2. Lydia B Chilton, Ecenaz Jen Ozmen, "),
                          const TextSpan(
                              text: ''' Sam H. Ross ''',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          const TextSpan(
                              text:
                                  ''', and Vivian Liu. 2021. VisiFit: Structuring Iterative Improvement for Novice Designers. In Proceedings of the 2021 CHI Conference on Human Factors in Computing Systems (CHI '21). Association for Computing Machinery, New York, NY , USA, Article 574, 1–14. '''),
                          TextSpan(text: "https://dl.acm.org/doi/10.1145/3411764.3445089", style: const TextStyle(color: Color.fromARGB(255, 94, 39, 176)), 
                          recognizer: TapGestureRecognizer()..onTap = () => launchUrl(Uri.parse('https://dl.acm.org/doi/10.1145/3411764.3445089')),)
                        ]),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top:30, left:30, right:30),
                      child: Text.rich(
                        TextSpan(style:const TextStyle(fontSize: 15), children: <TextSpan>[
                          const TextSpan(text: "3. "),
                          const TextSpan(
                              text: ''' Sam H. Ross ''',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          const TextSpan(
                              text:
                                  ''', Ecenaz Jen Ozmen, Maria V . Kogan, and Lydia B. Chilton. 2020. WordBlender: Principles and Tools for Generating Word Blends. In Proceedings of the 25th International Conference on Intelligent User Interfaces (IUI '20). Association for Computing Machinery, New York, NY , USA, 38–42. '''),
                          TextSpan(text: "https://dl.acm.org/doi/10.1145/3377325.3377527", style: const TextStyle(color: Color.fromARGB(255, 94, 39, 176)), 
                          recognizer: TapGestureRecognizer()..onTap = () => launchUrl(Uri.parse('https://dl.acm.org/doi/10.1145/3377325.3377527')),)
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
