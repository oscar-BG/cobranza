import 'package:flutter/material.dart';

class InputDecorationsSearch {

  static InputDecoration authInputDecoration({
    required String hintText,
    IconData? prefixIcon
  }) {
    return  InputDecoration(
      hintText: hintText,
      labelStyle: const TextStyle(color: Colors.black),
      prefixIcon: Icon( prefixIcon),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10)
      )
    );
  }
}