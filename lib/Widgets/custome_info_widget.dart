import 'package:flutter/material.dart';

class customeInfoWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool statement;
  const customeInfoWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.statement,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: (statement)?Color(0xFFb81040):Color(0xFF1d1f33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 70,
            ),
          SizedBox(height: 5,),
          Text(
            text,
            style: TextStyle(
              color: Color(0xFFbfbdd2),
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}