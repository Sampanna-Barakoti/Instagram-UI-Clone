import 'package:flutter/material.dart';

class Uihelper {
  static customTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
    TextInputType? keyboardType,
  }) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Color(0XFF121212),
        border: Border.all(color: Colors.grey.shade700),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
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
      ),
    );
  }

  static Widget customImage({required String imageURL}) {
    return Image.asset(
      "assets/images/$imageURL",
      // height: 100,
      // width: 100,
      // fit: BoxFit.cover,
    );
  }

  static customTextButton({
    required String text,
    required VoidCallback callback,
  }) {
    return TextButton(
      onPressed: () {
        callback();
      },
      child: Text(
        text,
        style: TextStyle(color: Color.fromARGB(255, 3, 109, 209), fontSize: 14),
      ),
    );
  }

  static customButton({
    required String buttonText,
    required VoidCallback callback,
  }) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFF3797EF),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
