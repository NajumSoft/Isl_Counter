import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isl_counter/models/myColors.dart';

Widget homeButton({required String iconUrl, required String label}) {
  return InkWell(
    onTap: () => {print('object')},
    child: Container(
      width: 110,
      height: 80,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          border:
              Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 2),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.9],
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(255, 227, 235, 241),
            ],
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color.fromARGB(255, 241, 241, 241)),
      child: Stack(
        children: [
          Positioned(
              child: Container(
            alignment: Alignment.topCenter,
            child: Container(
                width: 50,
                height: 50,
                color: Colors.transparent,
                child: Image(image: AssetImage(iconUrl))),
          )),
          Positioned(
              width: 100,
              bottom: 0,
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Color.fromARGB(255, 6, 65, 65)),
              ))
        ],
      ),
    ),
  );
}
