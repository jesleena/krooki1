import 'package:flutter/material.dart';

class CardWidget2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) =>
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: const EdgeInsets.all(10),
        child: SizedBox
          (
          height: 150,
          child: Column(
            mainAxisSize: MainAxisSize.max,

            children: [
              Image.asset(
                  'images/mostviewed/message.png', width: 54.0, height: 74.0),
              Text("10/12", style: Theme
                  .of(context)
                  .textTheme
                  .headline1),
              Text("New Messages", style: Theme
                  .of(context)
                  .textTheme
                  .subtitle1),
            ],),
        ),
      );
}