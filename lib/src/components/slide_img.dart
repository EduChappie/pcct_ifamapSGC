
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/colors.dart';

class SlideImg extends StatelessWidget{
  final String img;

  const SlideImg({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 32),
      child: Container(
        margin: const EdgeInsets.only(left: 6, right: 6),
        width: 267,
        height: 180,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1,
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }

}