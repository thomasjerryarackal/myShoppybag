import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Center(child: Text("Welcome",style: TextStyle(fontSize:20,color:Colors.red,fontWeight:FontWeight.bold),),),);
  }
}