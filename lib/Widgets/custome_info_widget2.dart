import 'package:flutter/material.dart';

class CustomeInfoWidget2 extends StatefulWidget {
  final String text;
  final String number;
  final IconData icon1;
  final IconData icon2;
  int data;
  CustomeInfoWidget2({
    super.key,
    required this.text,
    required this.number,
    required this.icon1,
    required this.icon2,
    required this.data,
  });

  @override
  State<CustomeInfoWidget2> createState() => _CustomeInfoWidget2State();
}

class _CustomeInfoWidget2State extends State<CustomeInfoWidget2> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFF1d1f33),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                color: Color(0xFFbfbdd2),
                fontSize: 20,
              ),
            ),
            Text(
              widget.data.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               IconButton.filled(
                style: IconButton.styleFrom(
                  backgroundColor: Color(0xFF0b0c20),
                ),
                onPressed: (){
                  setState(() {
                    widget.data--;
                  });
                },
                icon: Icon(widget.icon1),
                ),
                IconButton.filled(
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xFF0b0c20),
                  ),
                  onPressed: (){
                    setState(() {
                      widget.data++;
                    });
                  },
                  icon: Icon(widget.icon2)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
