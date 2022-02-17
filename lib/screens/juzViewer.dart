import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isl_counter/models/myColors.dart';
import 'package:quran/quran.dart' as quran;

class juzViewer extends StatefulWidget {
  const juzViewer({Key? key}) : super(key: key);

  @override
  _juzViewerState createState() => _juzViewerState();
}

class _juzViewerState extends State<juzViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/juzzBorder1.png'), fit: BoxFit.fill),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.9],
            colors: [
              Color.fromARGB(255, 139, 169, 192),
              Color.fromARGB(255, 86, 127, 153),
            ],
          ),
        ),
        child: Builder(builder: (context) {
          return SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(0),
            child: ListView.builder(
                itemCount: quran.getVerseCount(114),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(),
                    child: Text(
                        quran.getVerse(6, index + 1, verseEndSymbol: true),
                        textAlign: TextAlign.end,
                        style: GoogleFonts.amiri(
                            color: Color.fromARGB(255, 13, 13, 14),
                            fontSize: 35)),
                  );
                }),
          ));
        }),
      ),
    );
  }
}
