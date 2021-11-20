import 'package:flutter/material.dart';

class Dp extends StatefulWidget {
  final photo, chat;
  const Dp({Key? key, required this.photo, required this.chat})
      : super(key: key);

  @override
  _DpState createState() => _DpState();
}

class _DpState extends State<Dp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.chat.name),
      ),
      body: Container(
        color: Colors.black,
        child: Center(child: Image.asset(widget.photo)),
      ),
    );
  }
}
