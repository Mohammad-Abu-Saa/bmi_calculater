import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double result;
  const ResultPage({
    super.key,
    required this.result,
  });

  String getResultString() {
    if (result < 18.5)
      return "Underweight";
    else if (result < 24.9)
      return "Normal Weight";
    else if (result < 29.9)
      return "Overweight";
    else
      return "Obese";
  }

  Color getResultColor() {
    if (result < 18.5)
      return Color(0xFF3f7fa4);
    else if (result < 24.9)
      return Color(0xFF63803b);
    else if (result < 29.9)
      return Color(0xFF925113);
    else
      return Color(0xFF853021);
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0b0c20),
        title: Text(
          "Bmi Calculater",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
      ),
      backgroundColor: Color(0xFF0b0c20),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              getResultString(),
              style: TextStyle(
                color: getResultColor(),
                fontSize: 24,
              ),
            ),
            Text(
              result.toStringAsFixed(3),
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
