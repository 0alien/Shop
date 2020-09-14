import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../consts.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 60),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('images/S.png'),
            // Positioned(
            //   bottom: 0,
            //   child: Text(
            //     'stabraq',
            //     style: GoogleFonts.pacifico(
            //       textStyle: TextStyle(
            //         fontSize: 25,
            //         color: gColor,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
