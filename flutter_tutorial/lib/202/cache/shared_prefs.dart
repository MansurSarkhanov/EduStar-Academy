import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsLearn extends StatefulWidget {
  const SharedPrefsLearn({super.key});

  @override
  State<SharedPrefsLearn> createState() => _SharedPrefsLearnState();
}

class _SharedPrefsLearnState extends State<SharedPrefsLearn> {
  int currentNumber = 0;
  final TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    readNumber();
    readName();
  }

  Future<void> incrementNumber() async {
    currentNumber = currentNumber + 1;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('number', currentNumber);
    setState(() {});
  }

  Future<void> readNumber() async {
    final prefs = await SharedPreferences.getInstance();
    currentNumber = prefs.getInt('number') ?? 0;
    setState(() {});
  }

  String currentName = 'Soltan';
  Future<void> changeName(String name) async {
    currentName = name;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', currentName);
    setState(() {});
  }

  Future<void> readName() async {
    final prefs = await SharedPreferences.getInstance();
    currentName = prefs.getString('name') ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(currentName),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          incrementNumber();
        },
        child: const Icon(Icons.add),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
          ElevatedButton(
            child: const Text('Save name'),
            onPressed: () {
              changeName(controller.text);
            },
          ),
          Text(currentNumber.toString()),
        ],
      )),
    );
  }
}
