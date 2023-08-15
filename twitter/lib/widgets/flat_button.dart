// ignore_for_file: sort_child_properties_last, prefer_const_constructors_in_immutables, prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  CustomFlatButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}
