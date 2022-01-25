import 'package:flutter/material.dart';
import 'package:ihatedinner/utilities/sizeconfig.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(child: Scaffold(body: Center(child: Text("Hey, I Hate Dinner"),),));
  }
}
