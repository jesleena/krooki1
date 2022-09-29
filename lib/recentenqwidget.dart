import 'package:flutter/material.dart';

class RecentenqWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) =>
      Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: const EdgeInsets.all(15),
        child:
        Column(
          children:[
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 250, 0),
              child:
              Container(
                height: 20,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    color: Colors. orange[50]),

                child:
                Center(child:Text("Apartment",style: Theme.of(context).textTheme.headline4),
                ),),),

            Padding(
              padding: const EdgeInsets.fromLTRB(1, 0, 170, 0),
              child:
              Text("Emirates skyline building",style: Theme.of(context).textTheme.headline2),),
            Row(
              children: [SizedBox(
                width: 180,
                height: 150,
                child:
                Row(
                  children:[
                    Image.asset('images/mostviewed/cust.png', width: 50.0, height: 70.0),
                    Column(

                      children:[
                        const SizedBox(
                          height: 50,
                        ),
                        Text("customer",style: Theme.of(context).textTheme.headline2),

                        Text("Yazeed",style: Theme.of(context).textTheme.headline1),],),
                  ],),),
                SizedBox(
                  width: 180,
                  height: 150,
                  child:
                  Row(
                    children:[
                      Image.asset('images/mostviewed/agent.png', width: 50.0, height: 70.0),
                      Column(

                        children:[
                          const SizedBox(
                            height: 50,
                          ),
                          Text("agent",style: Theme.of(context).textTheme.headline2),

                          Text("Anwar",style: Theme.of(context).textTheme.headline1),
                        ],),

                    ],
                  ),),
              ],
            ),



            Container(
              height: 50,
              width: 400,
              decoration: BoxDecoration(color: Colors. grey[100],
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20.0), bottomRight: Radius.circular(20.0), ),
              ),

              child:
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Can you please share the location of the property",style: TextStyle(color: Colors.grey,fontSize:16,fontWeight: FontWeight.w400),),
              ),
            ), ],
        ),);
}