import 'package:cal_new/buttons.dart';
import 'package:cal_new/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:math_expressions/math_expressions.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var userInput = '';
  var answer = '0';
  var newString = '';
  var a;

  final List<String> buttons = [
    'C',
    '%',
    'D',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '00',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, right: 20),
                child: CircleAvatar(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        MyApp.themeNotifier.value =
                            MyApp.themeNotifier.value == ThemeMode.light
                                ? ThemeMode.dark
                                : ThemeMode.light;
                      });
                    },
                    child: Icon(MyApp.themeNotifier.value == ThemeMode.light
                        ? Icons.dark_mode
                        : Icons.light_mode),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 20, left: 20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        userInput,
                        style: GoogleFonts.taviraj(
                          fontSize: userInput.length >= 20 ? 25 : 35,
                          color: MyApp.themeNotifier.value == ThemeMode.light
                              ? Colors.black
                              : Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 15, left: 20),
                      alignment: Alignment.centerRight,
                      child: Text(
                        answer,
                        style: GoogleFonts.taviraj(
                          fontSize: answer.length >= 15 ? 30 : 40,
                          color: MyApp.themeNotifier.value == ThemeMode.light
                              ? Colors.black
                              : Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(height: 10, color: Colors.grey),
            ),
            Expanded(
              flex: 7,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput = '';
                            answer = '0';
                          });
                        },
                        buttonText: buttons[index],
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.white12
                            : Color(0x0000000D),
                        textColor: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.black54
                            : Colors.greenAccent,
                      );
                    } else if (index == 1) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.white12
                            : Color(0x0000000D),
                        textColor: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.black54
                            : Colors.greenAccent,
                      );
                    } else if (index == 2) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput =
                                userInput.substring(0, userInput.length - 1);
                          });
                        },
                        buttonText: buttons[index],
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.white12
                            : Color(0x0000000D),
                        textColor: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.black54
                            : Colors.greenAccent,
                      );
                    } else if (index == 19) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.redAccent,
                        textColor: Colors.black,
                      );
                    } else if (index == 3) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            newString =
                                userInput.substring(userInput.length - 1);
                            print(newString);
                            newString == buttons[index]
                                ? false
                                : userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.white12
                            : Color(0x0000000D),
                        textColor: Colors.redAccent,
                      );
                    } else if (index == 7) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            newString =
                                userInput.substring(userInput.length - 1);
                            print(newString);
                            newString == buttons[index]
                                ? false
                                : userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.white12
                            : Color(0x0000000D),
                        textColor: Colors.redAccent,
                      );
                    } else if (index == 11) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            newString =
                                userInput.substring(userInput.length - 1);
                            print(newString);
                            newString == buttons[index]
                                ? false
                                : userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.white12
                            : Color(0x0000000D),
                        textColor: Colors.redAccent,
                      );
                    } else if (index == 15) {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            newString =
                                userInput.substring(userInput.length - 1);
                            newString == buttons[index]
                                ? false
                                : userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.white12
                            : Color(0x0000000D),
                        textColor: Colors.redAccent,
                      );
                    } else {
                      return MyButton(
                        buttontapped: () {
                          setState(() {
                            userInput += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.white12
                            : Color(0x0000000D),
                        textColor: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.black
                            : Colors.white,
                      );
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isOperator(String o) {
    if (o == '/' || o == 'x' || o == '-' || o == '+' || o == '=') {
      return true;
    }
    return false;
  }

  // function to calculate the input operation
  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finaluserinput);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }
}
