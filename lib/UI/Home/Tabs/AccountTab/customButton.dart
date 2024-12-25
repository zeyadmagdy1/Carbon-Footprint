import 'package:flutter/material.dart';

typedef MyCallBackFun = void Function();

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String txt;
  MyCallBackFun myCallBackFun;
  CustomButton({required this.txt, required this.myCallBackFun, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
        onPressed: myCallBackFun,
        child: Text(
          txt,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
