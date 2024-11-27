import 'package:bmi_calc/Widgets/custome_button.dart';
import 'package:bmi_calc/Widgets/custome_info_widget.dart';
import 'package:bmi_calc/Widgets/custome_info_widget2.dart';
import 'package:bmi_calc/pages/ResultPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0b0c20),
        appBar: AppBar(
          backgroundColor: Color(0XFF0b0c20),
          title: Text(
            "Bmi Calculater",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: AppBody(),
      ),
    );
  }
}

class AppBody extends StatefulWidget {
  const AppBody({super.key});

  @override
  State<AppBody> createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  int height = 174;
  int age = 18;
  int weight = 80;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: (Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: customeInfoWidget(
                        icon: Icons.male_rounded,
                        text: "Male",
                        statement: isMale,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = false;
                        });
                      },
                      child: customeInfoWidget(
                        icon: Icons.female_rounded,
                        text: "Female",
                        statement: !isMale,
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: Color(0xFF1d1f33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Height",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFFbfbdd2),
                            )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            Text(
                              "cm",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Slider(
                          min: 120,
                          max: 200,
                          value: height.toDouble(),
                          activeColor: Color(0xFFf0175a),
                          inactiveColor: Color(0xFF5a596e),
                          onChanged: (value) {
                            setState(() {
                              height = value.toInt();
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                CustomeInfoWidget2(
                  text: "Age",
                  number: "18",
                  icon1: Icons.remove,
                  icon2: Icons.add,
                  data: age,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1d1f33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                            color: Color(0xFFbfbdd2),
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton.filled(
                              style: IconButton.styleFrom(
                                backgroundColor: Color(0xFF0b0c20),
                              ),
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: Icon(Icons.remove),
                            ),
                            IconButton.filled(
                                style: IconButton.styleFrom(
                                  backgroundColor: Color(0xFF0b0c20),
                                ),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icon(Icons.add)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomeButton(weight: weight, height: height),
        ],
      )),
    );
  }
}
