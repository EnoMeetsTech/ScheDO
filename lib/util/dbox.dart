import 'package:flutter/material.dart';
import 'package:schedo/util/my_buttons.dart';

class DBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.blue,
        content: Container(
            height: 150,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  style: TextStyle(fontSize: 25, color: Colors.white),
                  controller: controller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Add New Task'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyButtons(text: 'Save', onPressed: onSave),
                    const SizedBox(
                      width: 10,
                    ),
                    MyButtons(
                      text: 'Cancel',
                      onPressed: onCancel,
                    ),
                  ],
                )
              ],
            )));
  }
}
