import 'package:flutter/material.dart';

class TabbarexpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Expanded(
        child: TabBarView(
          children: [

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 70, 0),

              child:
              Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Property id", style: TextStyle(color: Colors.grey)),
                      Text("Building Name ",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("KROOQ123 "),
                      Text("AliAkbar Properties "),
                    ],
                  ),

                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Status", style: TextStyle(color: Colors.grey)),
                      Text("Purpose ", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Published"),
                      Text("For Rent "),
                    ],
                  ),

                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Type", style: TextStyle(color: Colors.grey)),
                      Text("Property type ",
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Residential "),
                      Text("Villa "),
                    ],
                  ),


                ],
              ),

              //
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 5, 0),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Property Title", style: TextStyle(color: Colors.grey)),
                  Text("Lorem Ipsum is simply dummy"),
                  Text("system Generated  property title dummy ",
                      style: TextStyle(color: Colors.grey)),
                  Text("Lorem Ipsum is simply dummy "),
                  Text("Description ", style: TextStyle(color: Colors.grey)),
                  Text("Lorem Ipsum is simply dummy "),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 5, 80, 0),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("A/C "),
                      Text("GYM "),
                    ],
                  ),


                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("ATM"),
                      Text("Play Ground "),
                    ],
                  ),


                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Restroom"),
                      Text("Garden "),
                    ],
                  ),


                ],
              ),),

            const Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 5, 0),
              child: Text("Lorem Ipsum is simply dummy "),
            ),
          ],
        ),
      );
}