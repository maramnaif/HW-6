import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hw6_maram_alharthi/widgets/button_widget.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key, required this.label, required this.controller});
  String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: label,
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Adjust the radius as needed
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: ButtonWidget(
              text: 'Clear',
              onPressed: () {
                controller.clear();
              },
            ),
          )
        ],
      ),
    );
  }
}
