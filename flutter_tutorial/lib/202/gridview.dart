import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({super.key});

  @override
  State<GridViewWidget> createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg'),
                const Text('Cappucino'),
                Row(
                  children: [Text("$index"), IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
