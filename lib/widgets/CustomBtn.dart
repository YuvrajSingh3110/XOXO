import 'package:flutter/material.dart';

class CustomBtn extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  const CustomBtn({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Color(0xffA0DDFF),
            blurRadius: 5,
            spreadRadius: 0
          )
        ]
      ),
      child: ElevatedButton(onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(
            width,
            55
          ),
          backgroundColor: Color(0xffA0DDFF)
        ),
          child: Text(text, style: TextStyle(fontSize: 18, color: Colors.black),),
      ),
    );
  }
}
