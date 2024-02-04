


import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Column(
      children: [
    const SizedBox(height: 24,),

        const Row(
          children: [
        
          Text("Flutter"), Text('Test'),Spacer(), Text('data'),Text('data')
        ],),
        const Spacer(),

        Container(height: 300,width: 200,color: Colors.red,),
        const Spacer(),
        ElevatedButton(onPressed: (){}, child: const Text("save"))
      ],
    ),);
  }
}