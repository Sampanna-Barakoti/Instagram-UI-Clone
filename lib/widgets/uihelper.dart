import 'package:flutter/material.dart';

class Uihelper {
  static customTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    required TextInputType keyboardType,
  }) {
    return Container(
      height: 44,
      width: 343,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0XFF121212),
        border: Border.all(color: Colors.white),
      ),
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: tohide,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  static customImage({required String imageURL}) {
    return Image.asset(
      "assets/images/$imageURL",
      // height: 100,
      // width: 100,
      // fit: BoxFit.cover,
    );
  }
}
