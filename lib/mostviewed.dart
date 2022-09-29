
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:krooki1/cardwidget.dart';
import 'package:krooki1/cardwidget1.dart';
import 'package:krooki1/cardwidget2.dart';
import 'package:krooki1/bottomnav.dart';
import 'package:krooki1/recentenqwidget.dart';


class Mostviewed extends StatefulWidget {
  static const String id ='mostviewed';

  @override
  _MostviewedState createState() => _MostviewedState();
}

class _MostviewedState extends State<Mostviewed> {

  final String image='';
  final String value='';
  final String content='' ;
  double get randHeight => Random().nextInt(100).toDouble();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        leading:
        IconButton(
          icon:Image.asset( "images/mostviewed/dp.png"),
          onPressed: () {//Navigator.pushNamed(context,MyAccount.id);
          },
        ),
        title: Image.asset("images/mostviewed/Logo_krooqi.png",height: 90,width: 70),centerTitle: true,
        actions: [Image.asset( "images/mostviewed/notify.png",height: 50,width: 25),],
        backgroundColor: Colors.orange[50],
        elevation: 0.0,
      ),

      body:ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        child: Container(
          color: Colors.white,
          child:
          CustomScrollView(slivers: [

            SliverToBoxAdapter(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                  CardWidget1(image: 'homeview',value : '70',content : 'Total Views'),
                  CardWidget1(image: 'call',value : '170',content : 'Total contacts'),
                ], ),
            ),

            SliverToBoxAdapter(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:const [
                  CardWidget1(image: 'house',value : '70/75',content : 'Published\nproperties'),
                  CardWidget1(image: 'investment',value : '45%',content : 'Avg listing rate'),

                ], ), ),
            SliverToBoxAdapter(
              child:
              CardWidget2(),
            ),

            SliverToBoxAdapter
              (
              child:Text('      Mostviewed Properties',style: Theme.of(context).textTheme.headline1),
            ),

            const SliverToBoxAdapter(
              child:
              CardWidget(image:'bg1'),
            ),

            const SliverToBoxAdapter(
              child:
              CardWidget( image: 'bg2'),
            ),

            SliverToBoxAdapter(
              child:
              Text("     Recent Enquires",style: Theme.of(context).textTheme.headline1),
            ),


            SliverToBoxAdapter(
              child:
              RecentenqWidget(),
            ),],),),),

      bottomNavigationBar:BottomNav(),

    );
  }
}