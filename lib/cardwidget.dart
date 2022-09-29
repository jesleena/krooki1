import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:intl/intl.dart';
import 'package:krooki1/photos.dart';

class CardWidget extends StatelessWidget {
  static final DateTime someDateTime = DateTime.now();
  static final DateFormat formatter = DateFormat.yMMMd();
  static final String formatted = formatter.format(someDateTime);
  final String image;

  const CardWidget({
    required this.image,
  }) ;

  @override
  Widget build(BuildContext context) => GestureDetector(
  child:
  SizedBox(
    height:490,
    width: double.infinity,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: const EdgeInsets.all(25),
      child:SizedBox
        (
        height:450,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Stack(
              children: <Widget>[
                Image.asset('images/mostviewed/$image.png'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(230, 140, 20, 0),
                  child:
                  Container(
                    height: 20,
                    width: 150,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Colors.orange
                    ),
                    child:
                    Center(child:Text('Villa/Rent/Residential',style: Theme.of(context).textTheme.headline3
                    ),
                    ),),),

              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(19, 0, 122, 0),
                  child:
                  Container(
                    height: 20,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(6)),
                        color: Colors.orange[50]
                    ),
                    child:
                    Center(child:Text(formatted
                    ),
                    ),),),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text('KROOKI 1001',style: Theme.of(context).textTheme.headline2),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 100, 5),
              child: Text("3 bhk fully furnished upper portion",style: Theme.of(context).textTheme.headline2),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 110, 10),
                child:
                Text('riadh',style: Theme.of(context).textTheme.headline2),),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'SAR ', style: Theme.of(context).textTheme.bodyText2),
                      TextSpan(text: '629.822', style: Theme.of(context).textTheme.headline1),
                      TextSpan(text: '/month', style: Theme.of(context).textTheme.bodyText2),

                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness:1.5,
              indent: 10,
              endIndent: 10,
              color: Colors.grey,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(1, 10, 250, 10),
              child:Text('Nijas Nasser',style: Theme.of(context).textTheme.headline2),),
            //LinearProgressIndicator(),
            LinearPercentIndicator(
              // width: 100.0,
              lineHeight: 7.0,
              percent: 0.75,
              progressColor: Colors.orange,
              barRadius: const Radius.circular(16),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 10, 170, 20),
              child:
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: 'profile completion ', style: Theme.of(context).textTheme.headline2),
                    TextSpan(text: '75%', style: Theme.of(context).textTheme.subtitle1),

                  ],
                ),
              ),),






            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(color: Colors. grey[100],
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0), ),
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Container(
                    height: 30,
                    width: 90,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white),

                    child: Row(
                      children: <Widget>[
                        Image.asset('images/mostviewed/home1.png'),
                        Text("20",style: Theme.of(context).textTheme.bodyText2),
                      ],
                    ),),


                  Container(
                    height: 30,
                    width: 90,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white),

                    child: Row(
                      children: <Widget>[
                        Image.asset('images/mostviewed/view.png'),
                        Text("20",style: Theme.of(context).textTheme.bodyText2),
                      ],
                    ),),


                  Container(
                    height: 30,
                    width: 90,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white),

                    child: Row(
                      children: <Widget>[
                        Image.asset('images/mostviewed/phone-call.png'),
                        Text("20",style: Theme.of(context).textTheme.bodyText2),
                      ],
                    ),),

                ],
              ),
            ),
          ],),
      ),
    ),
  ),

      onTap: () {Navigator.pushNamed(context, Photos.id);}
  );
}