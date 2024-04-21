import 'package:adviceme/data/chatgptAPI.dart';
import 'package:adviceme/screens/advice_screen.dart';
import 'package:adviceme/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../data/globalvaribles.dart';
import '../utils/style.dart';

class selection_screen extends StatefulWidget {
  int? page;

  selection_screen({super.key, required this.page});

  @override
  State<selection_screen> createState() => _selection_screenState();
}

class _selection_screenState extends State<selection_screen> {
  late List chosen;
  late String _type;
  late int selected;

  void _handleChange(var value) {
    setState(() {
      if (widget.page == 0) {
        selectedCategory = value as int;
      } else {
        selectedAudence = value as int;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.page == 0) {
      chosen = advice;
      _type = Type[0];
    } else {
      chosen = audience;
      _type = Type[1];
    }

    if (widget.page == 0) {
      selected = selectedCategory;
    } else {
      selected = selectedAudence;
    }
    var _screenSize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: background_color,
      body: Center(
          child: Stack(alignment: Alignment.center, children: [
        Container(
          height: _screenSize.height * 0.8,
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
                height: 25,
              ),
              Text("ADVICE ME!", style: subhead_font),
              SizedBox(
                height: 15,
              ),
              Text("Type of ${_type}", style: type_font),
              SizedBox(
                height: 30,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: chosen.map((label) {
                  int index = chosen.indexOf(label);

                  return RadioListTile(
                    activeColor: Colors.white,
                    selectedTileColor: Colors.white,
                    title: Text(
                      label,
                      style: options_font,
                      textAlign: TextAlign.start,
                    ),
                    value: index,
                    groupValue: selected,
                    onChanged: _handleChange,
                    contentPadding: EdgeInsets.only(left: 30, right: 0),
                  );
                }).toList(),
              )
            ],
          ),
        ),
        Column(children: [
          SizedBox(
            height: _screenSize.height * 0.82,
          ),
          InkWell(
              child: Image.asset(
                'assets/button_next.png',
                height: 64,
                width: 64,
              ),
              onTap: () async {
                if (widget.page == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => selection_screen(
                              page: 1,
                            )),
                  );
                } else {
                  /////////////////////// THIS IS the comment is how to work with chagpt api
                  // String Prompt =
                  //     "I'm seeking ${advice[selectedCategory]}, specifically for ${audience[selectedAudence]}. Can you give me some cool advice? Make it clear and concise";
                  // String response =
                  //     await ChatGPTApiService().getChatResponse(Prompt);
                  // print(response);
                  ///////////////////// this is 2 line one example of the output of the response
                  List<String> lines = response.split('\n');
                  String? stringWithoutFirstLine = lines.sublist(2).join('\n');

                  //////////
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              advice_screen(response: stringWithoutFirstLine)));
                }
              })
        ]),
      ])),
    ));
  }
}
