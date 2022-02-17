import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isl_counter/models/myColors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart';
import 'package:isl_counter/screens/LandingPageOne.dart';
import 'package:isl_counter/screens/juzViewer.dart';

class searchPageOne extends StatefulWidget {
  const searchPageOne({Key? key}) : super(key: key);

  @override
  _searchPageOneState createState() => _searchPageOneState();
}

class _searchPageOneState extends State<searchPageOne>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  List listofsurah = [];
  GetSurah() async {
    var dio = Dio();
    final response = await dio.get('http://api.alquran.cloud/v1/surah');
    listofsurah = response.data['data'];
    print(listofsurah);
    setState(() {});
  }

  @override
  void initState() {
    GetSurah();
    super.initState();
    tabController = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.9],
          colors: [
            Color.fromARGB(255, 238, 242, 245),
            Color.fromARGB(255, 195, 202, 206),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
              controller: tabController,
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 2,
              indicatorColor: myColors.txt,
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: myColors.txt,
              tabs: [
                Tab(
                  text: 'surah',
                ),
                Tab(
                  text: 'para',
                )
              ]),
          leading: IconButton(
            onPressed: () =>
                {Get.to(landingPageOne(), transition: Transition.rightToLeft)},
            icon: Icon(
              Icons.home_filled,
              color: myColors.txt,
            ),
          ),
          centerTitle: true,
          title: Text(
            'my favourite',
            style: GoogleFonts.openSans(color: myColors.txt),
          ),
        ),
        drawer: Drawer(),
        body: TabBarView(
          controller: tabController,
          children: [
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          border: InputBorder.none,
                          suffixIconColor: myColors.txt,
                          suffixIcon: Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: 'Search ...'),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: listofsurah.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(juzViewer());
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: FittedBox(
                                  child: Text(
                                      listofsurah[index]['number'].toString(),
                                      style: GoogleFonts.openSans(
                                          color: myColors.txt)),
                                ),
                              ),
                              radius: 20.0,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage("assets/circleFrame.png"),
                            ),
                            title: Container(
                              width: 120,
                              //color: Colors.amberAccent,
                              child: Text(
                                listofsurah[index]['englishName'],
                                textDirection: TextDirection.ltr,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.openSans(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    color: myColors.txt),
                              ),
                            ),
                            subtitle: Container(
                              width: 120,
                              //color: Colors.amberAccent,
                              child: Text(listofsurah[index]['revelationType'],
                                  textDirection: TextDirection.ltr,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.openSans(
                                      fontSize: 12, color: myColors.txt)),
                            ),
                            trailing: Container(
                              width: 120,
                              // color: Colors.amberAccent,
                              child: Text(
                                listofsurah[index]['name'],
                                style: GoogleFonts.amiri(
                                    color: Color.fromARGB(255, 13, 87, 105),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                                textDirection: TextDirection.rtl,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ]),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              body: Center(child: Text('two')),
            ),
          ],
        ),
      ),
    );
  }
}
