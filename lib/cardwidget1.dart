
import 'package:flutter/material.dart';

class CardWidget1 extends StatelessWidget {

  final String image;
  final String value;
  final String content ;



  const CardWidget1({
    required this.image,
    required this.value,
    required this.content,
  });

  @override
  Widget build(BuildContext context) =>

      Card(
        margin: const EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: SizedBox
          (width: 180,
          height: 150,
          child: Column(
            mainAxisSize: MainAxisSize.max,

            children: [
              Image.asset(
                  'images/mostviewed/$image.png', width: 54.0, height: 74.0),
              Text(value, style: Theme
                  .of(context)
                  .textTheme
                  .headline1),

              Text(content, style: Theme
                  .of(context)
                  .textTheme
                  .subtitle1),
            ],),
        ),);
}