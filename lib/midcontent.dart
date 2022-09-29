import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
class MidcontentWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) =>


      Container(
        width: 480,
        height: 200,

        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.grey, spreadRadius: .15),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0),),),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child:
              Text(
                  " Modern Type 3E/3BHK + maids Upper portion Apartment for rent",
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline1),),

            Padding(
              padding: const EdgeInsets.fromLTRB(3, 8, 250, 0),
              child: Text(" Riyadh Saudi Arabia", style: Theme
                  .of(context)
                  .textTheme
                  .bodyText2),),

            const Divider(
              height: 10,
              thickness: .5,
              indent: 10,
              endIndent: 10,
              color: Colors.grey,

            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Padding(
                padding: const EdgeInsets.fromLTRB(6, 10, 80, 10),
                child:
                Text('Rent/Residential', style: Theme
                    .of(context)
                    .textTheme
                    .subtitle1),),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'SAR ', style: Theme
                          .of(context)
                          .textTheme
                          .bodyText2),
                      TextSpan(text: '629.822', style: Theme
                          .of(context)
                          .textTheme
                          .headline1),
                      TextSpan(text: '/month', style: Theme
                          .of(context)
                          .textTheme
                          .bodyText2),

                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: .5,
              indent: 10,
              endIndent: 10,
              color: Colors.grey,

            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
              child:
              LinearPercentIndicator(
// width: 100.0,
                lineHeight: 7.0,
                percent: 0.75,
                progressColor: Colors.orange,
                barRadius: const Radius.circular(16),
              ),),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 5, 170, 0),
              child:
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'profile completion ', style: Theme
                        .of(context)
                        .textTheme
                        .headline2),
                    TextSpan(text: '75%', style: Theme
                        .of(context)
                        .textTheme
                        .subtitle1),

                  ],
                ),
              ),),
          ],),);
}
