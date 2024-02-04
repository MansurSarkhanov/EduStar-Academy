

import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Stack(children: [
const SizedBox(width: 450,height: 230,),
        Container(
          color: Colors.amberAccent,
          height: 200,width: 400,),
           Positioned(
            right:- 20,
            bottom:- 50,
             child: Container(
                       color: Colors.red,
                       height: 100,width: 100,),
           )
      ],),
    );
  }
}