
import 'package:flutter/cupertino.dart';

class SlideImg extends StatelessWidget{
  final String img;

  const SlideImg({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 32),
      child: Container(
        width: 267,
        height: 180,
        alignment: Alignment.center,
        decoration: BoxDecoration(
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