import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isl_counter/models/myColors.dart';
import 'package:isl_counter/screens/searchPageOne.dart';
import 'package:isl_counter/widgets/homeButton.dart';

class landingPageOne extends StatefulWidget {
  const landingPageOne({Key? key}) : super(key: key);

  @override
  _landingPageOneState createState() => _landingPageOneState();
}

class _landingPageOneState extends State<landingPageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.9],
          colors: [
            Color.fromARGB(255, 237, 243, 247),
            Color.fromARGB(255, 237, 243, 247),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () =>
                {Get.to(searchPageOne(), transition: Transition.leftToRight)},
            icon: Icon(
              Icons.arrow_back,
              color: myColors.txt,
            ),
          ),
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                children: [
                  Container(
                    child: Stack(children: [
                      Positioned(
                          top: 0,
                          right: 0,
                          width: 200,
                          height: 150,
                          child:
                              Image(image: AssetImage('assets/mosque3.png'))),
                      Container(
                        width: 400,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.1, 0.9],
                            colors: [
                              Color.fromARGB(97, 71, 14, 124),
                              Color.fromARGB(99, 4, 91, 158),

                              //         Color.fromARGB(99, 69, 32, 83),
                              //     Color.fromARGB(100, 135, 203, 255),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        child: Container(
                            height: 120,
                            color: Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Magrib',
                                  style: GoogleFonts.lato(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color.fromARGB(255, 241, 237, 237)),
                                ),
                                Text(
                                  '17:34',
                                  style: GoogleFonts.lato(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700,
                                      color:
                                          Color.fromARGB(255, 241, 237, 237)),
                                ),
                                Text(
                                  'Sep-Wednessday-2022',
                                  style: GoogleFonts.lato(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color.fromARGB(255, 241, 237, 237)),
                                )
                              ],
                            )),
                      )
                    ]),
                  ),
                  homeButton(iconUrl: 'assets/dua2.png', label: 'Dua'),
                  homeButton(iconUrl: 'assets/quran.png', label: 'Al-Quran'),
                  homeButton(iconUrl: 'assets/mosque.png', label: 'Pray Time'),
                  homeButton(iconUrl: 'assets/tasbeeh.png', label: 'Tasbeeh'),
                  homeButton(iconUrl: 'assets/quran.png', label: 'Dua'),
                  homeButton(iconUrl: 'assets/quran.png', label: 'Pray Time'),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Play Al-Quran',
                  style: GoogleFonts.lato(
                      fontSize: 30, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: ((context, index) => Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            stops: [0.1, 0.9],
                            colors: [
                              Color.fromARGB(95, 202, 186, 218),
                              Color.fromARGB(98, 149, 165, 177),

                              //         Color.fromARGB(99, 69, 32, 83),
                              //     Color.fromARGB(100, 135, 203, 255),
                            ],
                          ),
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
