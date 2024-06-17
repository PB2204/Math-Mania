import 'package:flutter/material.dart';
import '/src/core/app_assets.dart';
import 'package:url_launcher/url_launcher.dart';

class MathRiddleView extends StatelessWidget {
  const MathRiddleView({Key? key}) : super(key: key);

  Future<void> _launchURL() async {
    const url = 'https://pabitrabanerjee.me/Math-Mania-History';
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppAssets.icAppMathRiddle,
              width: 38,
              height: 38,
            ),
            SizedBox(width: 8),
            Text(
              "Complete Guideline",
              style:
                  Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 18),
            ),
          ],
        ),
        SizedBox(height: 12),
        Text(
          "Get the complete guideline about this game, from its development history to the gameplay and features. This will open in a browser!",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 16),
        ),
        SizedBox(height: 24),
        Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: InkWell(
            onTap: () {
              _launchURL();
              Navigator.pop(context);
            },
            borderRadius: BorderRadius.all(Radius.circular(12)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffF48C06), Color(0xffD00000)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Text(
                  "Try it Now",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
