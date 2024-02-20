import 'package:flutter/material.dart';
import 'package:flutter_tutorial/202/custom_dialog.dart';
import 'package:flutter_tutorial/202/custom_sheet.dart';

class SheetAndDialogWidget extends StatefulWidget {
  const SheetAndDialogWidget({super.key});

  @override
  State<SheetAndDialogWidget> createState() => _SheetAndDialogWidgetState();
}

class _SheetAndDialogWidgetState extends State<SheetAndDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            customSheet(context,
                child: SizedBox(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              icon: const Icon(Icons.close))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            customDialog(context,
                                child: AlertDialog(
                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text("Ok"))
                                  ],
                                  title: const Text('Listen Music'),
                                ),
                                isDiss: false);
                          },
                          child: const Row(
                            children: [
                              Icon(Icons.music_note),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Music"),
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.video_call_rounded),
                            SizedBox(
                              width: 20,
                            ),
                            Text("Video"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                isColse: false,
                isDrag: true);
          },
          child: const Text('Enter'),
        ),
      ),
    );
  }
}
