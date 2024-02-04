import 'package:flutter/material.dart';

class CardAndListtileWidget extends StatefulWidget {
  const CardAndListtileWidget({super.key});

  @override
  State<CardAndListtileWidget> createState() => _CardAndListtileWidgetState();
}

class _CardAndListtileWidgetState extends State<CardAndListtileWidget> {
  bool isCheck = false;

  void changeCheckBox(bool? item) {
    isCheck = item ?? false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow,
      child: ListTile(
        onTap: () async {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('data'),
                actions: [ElevatedButton(onPressed: () {}, child: const Text('Ok'))],
              );
            },
          );
        },
        trailing: const Icon(Icons.add),
        title: const Text('Hello World'),
        leading: Checkbox(
          value: isCheck,
          onChanged: (value) {
            changeCheckBox(value);
          },
        ),
      ),
    );
  }
}
