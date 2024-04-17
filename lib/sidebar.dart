import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
            Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.only(top: 50, left: 250),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/Sam_Photo.jpeg"),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              margin: const EdgeInsets.only(top: 20, left: 250),
              child: Text.rich(TextSpan(
                  children: [
                    const WidgetSpan(alignment: PlaceholderAlignment.middle, child: Icon(FontAwesomeIcons.locationPin, size: 15,)),
                    const TextSpan(text: "  Seattle, WA\n", style: TextStyle(fontSize: 12, height: 3, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 51, 10, 111))),
                    const WidgetSpan(alignment: PlaceholderAlignment.middle, child: Icon(FontAwesomeIcons.envelope, size: 15,)),
                    TextSpan(text: "  Email\n", recognizer: TapGestureRecognizer()..onTap = () => launchUrl(Uri.parse('mailto:samhross@cs.washington.edu')), style: TextStyle(fontSize: 12, height: 3, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 51, 10, 111))),
                    const WidgetSpan(alignment: PlaceholderAlignment.middle, child: Icon(FontAwesomeIcons.linkedin, size: 15,)),
                    TextSpan(text: "  LinkedIn\n", recognizer: TapGestureRecognizer()..onTap = () => launchUrl(Uri.parse('https://www.linkedin.com/in/sam-ross-09936a190/')), style: TextStyle(fontSize: 12, height: 3, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 51, 10, 111))),
                    const WidgetSpan(alignment: PlaceholderAlignment.middle, child: Icon(FontAwesomeIcons.googleScholar, size: 15,)),
                    TextSpan(text: "  Google Scholar\n", recognizer: TapGestureRecognizer()..onTap = () => launchUrl(Uri.parse('https://scholar.google.com/citations?user=aPo_CMMAAAAJ&hl=en')), style: TextStyle(fontSize: 12, height: 3, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 51, 10, 111))),

                  ])),
            )
          ]);
  }
}