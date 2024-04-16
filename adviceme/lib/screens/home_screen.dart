import 'package:adviceme/utils/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    var _screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: background_color,
      body: Center(
        child: Stack(alignment: Alignment.center, children: [
          Container(
            height: _screenSize.height * 0.23,
            width: _screenSize.width * 0.92,
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
                  height: 50,
                ),
                Text("ADVICE ME!", style: head_font)
              ],
            ),
          ),
          Column(children: [
            SizedBox(
              height: _screenSize.height * 0.56,
            ),
            InkWell(
              child: Image.asset('assets/button_start.png'),
              onTap: () {},
            )
          ])
        ]),
      ),
    );
  }
}
