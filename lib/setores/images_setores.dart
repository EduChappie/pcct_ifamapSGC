import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ifmap_pcct/src/components/slide_img.dart';
import 'package:ifmap_pcct/templates/barraNavegacao.dart';

import '../src/themes/colors.dart';
import '../src/themes/text_style.dart';

class Imagens extends StatefulWidget {
  List url_images;
  Imagens({super.key, required this.url_images});

  @override
  ImagensState createState() => ImagensState();
}

class ImagensState extends State<Imagens> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              "Imagens",
              style: TextStyles.tituloSetor,
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12),
            child: Container(
              height: 500,
              child: PageView.builder(
                  controller: PageController(
                    viewportFraction: 0.92
                  ),
                  itemCount: widget.url_images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SlideImg(
                      img: widget.url_images[index],
                    );
                  }
              )
              ),
          ),
        ],
      )
    );
  }

}