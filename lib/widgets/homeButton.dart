import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isl_counter/models/myColors.dart';

Widget homeButton({required String iconUrl, required String label}) {
  return InkWell(
    onTap: () => {print('object')},
    child: Container(
      width: 110,
      height: 70,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      decoration: BoxDecoration(
          // border:
          //   Border.all(color: Color.fromARGB(255, 255, 255, 255), width: 2),
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   stops: [0.1, 0.9],
          //   colors: [
          //     Color.fromARGB(158, 255, 255, 255),
          //     Color.fromARGB(143, 204, 207, 209),
          //   ],
          // ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Color.fromARGB(255, 255, 255, 255)),
      child: Stack(
        children: [
          Positioned(
              child: Container(
            alignment: Alignment.topCenter,
            child: Container(
                width: 40,
                height: 40,
                color: Colors.transparent,
                child: Image(image: AssetImage(iconUrl))),
          )),
          Positioned(
              width: 100,
              bottom: 0,
              child: Text(
                label,
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color.fromARGB(255, 6, 65, 65)),
              ))
        ],
      ),
    ),
  );
}
