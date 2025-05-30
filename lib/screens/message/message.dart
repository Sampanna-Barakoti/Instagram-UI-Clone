import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  // const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.back)),
      ),
    );
  }
}
