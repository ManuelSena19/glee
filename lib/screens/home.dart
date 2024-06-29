import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/faces.dart';
import '../widgets/task.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: SvgPicture.asset(
            'assets/icons/hamburger.svg',
            color: color.onPrimary,
            width: 22,
            height: 18,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: ClipOval(
              child: Image.asset(
                'assets/images/user.jpg',
                width: 35,
                height: 35,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: [
          const SizedBox(
            height: 20,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Welcome back,',
                style: GoogleFonts.alegreya(
                  color: color.onPrimary,
                  fontSize: 30,
                ),
              ),
              TextSpan(
                text: ' Sena!',
                style: GoogleFonts.alegreya(
                  color: color.onPrimary,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'How are you feeling today?',
            style: TextStyle(
              color: color.onPrimary,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 101,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Faces(
                  title: 'Happy',
                  colorName: color.secondary,
                  assetName: 'assets/images/happy.png',
                ),
                Faces(
                  title: 'Calm',
                  colorName: color.primary,
                  assetName: 'assets/images/calm.png',
                ),
                Faces(
                  title: 'Relax',
                  colorName: color.onSecondary,
                  assetName: 'assets/images/relax.png',
                ),
                Faces(
                  title: 'Focus',
                  colorName: color.tertiary,
                  assetName: 'assets/images/focus.png',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "Today's Task",
            style: TextStyle(
              color: color.onPrimary,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Task(
            title: 'Peer Group Meetup',
            subtitle:
                'Let’s open up to the thing that matters among the people',
            assetName: 'assets/images/meetup.png',
            backgroundColor: color.onTertiary,
            foregroundColor: color.secondary,
            textButton: 'Join Now',
            iconData: Icons.play_circle_fill,
          ),
          const SizedBox(
            height: 30,
          ),
          Task(
            title: 'Meditation',
            subtitle:
                'Aura is the most important thing that matters to you. Join us on',
            assetName: 'assets/images/meditation.png',
            backgroundColor: color.secondaryFixed,
            foregroundColor: color.onSecondary,
            textButton: '06:00 PM',
            iconData: Icons.access_time_filled,
          ),
        ],
      ),
    );
  }
}

