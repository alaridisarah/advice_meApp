import 'package:adviceme/data/chatgptAPI.dart';
import 'package:adviceme/data/globalvaribles.dart';
import 'package:adviceme/utils/style.dart';
import 'package:flutter/material.dart';

class advice_screen extends StatefulWidget {
  late String response;
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
                child: Container(
                    width: _screenSize.width * 0.92,
                    padding: EdgeInsets.all(10.0),
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
                    child: Text(widget.response)))));
  }
}
