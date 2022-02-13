import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          color: Colors.white,
          image: DecorationImage(
              image: AssetImage('assets/MosqueBG.png'), fit: BoxFit.cover)),
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
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [homeButton(), homeButton()],
              )
            ],
          ),
        ),
      ),
    );
  }
}
