

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/101/card_listile.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
            
              children:  [
                Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
            ,Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
           , Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
           , Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
            
         ,Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
             ,Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
            ,Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
           , Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
           , Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
           , Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
            ,Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
           , Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
            ,Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
            ,Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
            ,Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.red),)
            
              ],
            ),
          ),
          const SizedBox(height: 50,),
           SizedBox(
            height: 600,
            child: ListView(
            
              children: const [
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
              CardAndListtileWidget(),
            
              ],
            ),
          ),
        ],
      )
      ,
    );
  }
}