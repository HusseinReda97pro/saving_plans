import 'package:flutter/material.dart';

class PinInputWidget extends StatelessWidget {
  final TextEditingController pinInputController;
  const PinInputWidget({super.key, required this.pinInputController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          4,
          (index) => Card(
              child: Container(
            width: 18.0,
            padding: const EdgeInsets.all(5.0),
            child: Text(pinInputController.text.length > index
                ? pinInputController.text[index]
                : ""),
          )),
        ),
      ),
    );
  }
}
