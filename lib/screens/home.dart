import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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

class Faces extends StatelessWidget {
  const Faces(
      {super.key,
      required this.title,
      required this.assetName,
      required this.colorName});

  final String title;
  final String assetName;
  final Color colorName;

  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 69.58,
          height: 72.95,
          decoration: BoxDecoration(
            color: colorName,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Image.asset(assetName),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            color: color.onPrimary,
          ),
        )
      ],
    );
  }
}

class Task extends StatelessWidget {
  const Task(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.assetName,
      required this.backgroundColor,
      required this.foregroundColor,
      required this.textButton,
      required this.iconData});

  final String title;
  final String subtitle;
  final String assetName;
  final Color backgroundColor;
  final Color foregroundColor;
  final String textButton;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: 165,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: color.primaryFixed,
            ),
            color: backgroundColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.alegreya(
                  color: color.onPrimary,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  subtitle,
                  style: TextStyle(
                    color: color.onPrimary,
                    fontSize: 15,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    textButton,
                    style: TextStyle(
                      color: foregroundColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    iconData,
                    size: 20,
                    color: foregroundColor,
                  )
                ],
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Transform.translate(
            offset: const Offset(0, 50),
            child: Image.asset(
              assetName,
              height: 62.14,
              width: 80,
            ),
          ),
        ),
      ],
    );
  }
}
