import 'package:flutter/material.dart';
import 'pages/firstpage.dart';
void main()
{

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FirstPage();
  }
}