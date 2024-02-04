import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatefulWidget {
  const ListViewBuilderWidget({super.key});

  @override
  State<ListViewBuilderWidget> createState() => _ListViewBuilderWidgetState();
}

class _ListViewBuilderWidgetState extends State<ListViewBuilderWidget> {
  final TextEditingController controller = TextEditingController();
  void revomeUser(int index) {
    item.removeAt(index);
    setState(() {});
  }

  void addUser() {
    item.insert(0, controller.text);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: controller,
        ),
        actions: [
          IconButton(
              onPressed: () {
                addUser();
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () {
                revomeUser(index);
              },
              child: Text(item[index]));
        },
      ),
    );
  }
}

List<String> item = ['Soltan', "Sadiq", "Mansur", "Eli"];
