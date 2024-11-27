import 'package:bmi_calc/pages/ResultPage.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.weight,
    required this.height,
  });

  final int weight;
  final int height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          onPressed: () {
            double result = weight / ((height / 100) * (height / 100));
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return ResultPage(result: result);
              },
            ));
          },
          child: Text(
            "Calculate",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          )),
    );
  }
}
