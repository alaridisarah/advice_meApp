import 'package:adviceme/data/chatgptAPI.dart';
import 'package:adviceme/data/globalvaribles.dart';
import 'package:adviceme/screens/home_screen.dart';
import 'package:adviceme/utils/style.dart';
import 'package:flutter/material.dart';

class advice_screen extends StatefulWidget {
  String? response;
  advice_screen({super.key, required String response});

  @override
  State<advice_screen> createState() => _advice_screenState();
}

class _advice_screenState extends State<advice_screen> {
  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;

    return SafeArea(
        child: Scaffold(
            backgroundColor: background_color,
            body: Center(
              child: SingleChildScrollView(
                  child: Stack(alignment: Alignment.center, children: [
                Center(
                  child: Container(
                      width: _screenSize.width * 0.92,
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                          color: contaier_color,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 29, 28, 28),
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 15.0,
                              spreadRadius: 2.0,
                            ),
                          ]),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text("ADVICE ME!", style: subhead_font),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            response! ?? "",
                            style: advice_font,
                          ),
                        ],
                      )),
                ),
                Column(children: [
                  SizedBox(
                    height: _screenSize.height * 0.58,
                  ),
                  InkWell(
                    child: Image.asset(
                      'assets/home_button.png',
                      height: 64,
                      width: 64,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => home_screen()));
                    },
                  )
                ])
              ])),
            )));
  }
}
