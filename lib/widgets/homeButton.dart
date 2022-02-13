import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isl_counter/models/myColors.dart';

Widget homeButton() {
  return InkWell(
    onTap: () => {print('object')},
    child: Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 255, 255, 255)),
      child: Stack(
        children: [
          Positioned(
              child: Container(
            alignment: Alignment.topCenter,
            child: Container(
                width: 70,
                height: 70,
                color: Colors.transparent,
                child: Image(image: AssetImage('assets/PrayIcon.png'))),
          )),
          Positioned(
              width: 90,
              bottom: 0,
              child: Text(
                'Pray Times',
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(fontSize: 12, color: myColors.txt),
              ))
        ],
      ),
    ),
  );
}
