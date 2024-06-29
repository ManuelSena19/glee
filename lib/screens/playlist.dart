import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Playlist extends StatefulWidget {
  const Playlist({super.key});

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  bool isPlaying = true;
  @override
  Widget build(BuildContext context) {
    final ColorScheme color = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.keyboard_arrow_down_sharp,
          size: 30,
          color: color.onPrimary,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: SvgPicture.asset(
              'assets/icons/playlist_menu.svg',
              color: color.onPrimary,
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Calming Playlist',
            style: GoogleFonts.alegreya(
              fontSize: 30,
              color: color.onPrimary,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Image.asset(
              'assets/images/illustration.png',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Rain On Glass',
            textAlign: TextAlign.center,
            style: GoogleFonts.alegreya(
              fontSize: 35,
              color: color.onPrimary,
            ),
          ),
          Text(
            'By: Painting with Passion',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: color.onPrimary,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/icons/shuffle.svg',
                  color: color.secondary,
                ),
                Icon(
                  Icons.fast_rewind,
                  color: color.secondary,
                  size: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isPlaying = !isPlaying;
                    });
                  },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: color.onTertiary,
                        ),
                        child: Icon(
                          isPlaying
                              ? Icons.pause_rounded
                              : Icons.play_arrow_rounded,
                          size: 50,
                          color: color.surface,
                        ),
                      ),
                      SizedBox(
                        width: 75,
                        height: 75,
                        child: CircularProgressIndicator(
                          color: color.secondary,
                          value: 0.75,
                          strokeWidth: 5,
                          strokeAlign: BorderSide.strokeAlignInside,
                        ),
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.fast_forward,
                  color: color.secondary,
                  size: 30,
                ),
                SvgPicture.asset(
                  'assets/icons/repeat.svg',
                  color: color.secondary,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
