import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Row(children: [
                Container(
                  height: 130,
                  width: 130,
                  child: Column(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Image.asset("images/33.jpg"),
                      ),
                      Text("data")
                    ],
                  ),
                )
              ]),
              Row(children: [
                Container(
                  height: 130,
                  width: 130,
                  child: Column(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Image.asset("images/33.jpg"),
                      ),
                      Text("data")
                    ],
                  ),
                )
              ]),
              Row(children: [
                Container(
                  height: 130,
                  width: 130,
                  child: Column(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Image.asset("images/33.jpg"),
                      ),
                      Text("data")
                    ],
                  ),
                )
              ]),
            ]),
          ),
        ),

        Row(children: [
          Row(children: [
            Container(
              height: 130,
              width: 130,
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Image.asset("images/33.jpg"),
                  ),
                  Text("data")
                ],
              ),
            )
          ]),
          Row(children: [
            Container(
              height: 130,
              width: 130,
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Image.asset("images/33.jpg"),
                  ),
                  Text("data")
                ],
              ),
            )
          ]),
          Row(children: [
            Container(
              height: 130,
              width: 130,
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Image.asset("images/33.jpg"),
                  ),
                  Text("data")
                ],
              ),
            )
          ]),
          // SizedBox(
          //   height: 30,
          // ),
        ]),
        // SizedBox(
        //   width: 30,
        // ),
        Row(children: [
          Row(children: [
            Container(
              height: 130,
              width: 130,
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Image.asset("images/33.jpg"),
                  ),
                  Text("data")
                ],
              ),
            )
          ]),
          Row(children: [
            Container(
              height: 130,
              width: 130,
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Image.asset("images/33.jpg"),
                  ),
                  Text("data")
                ],
              ),
            )
          ]),
          Row(children: [
            Container(
              height: 130,
              width: 130,
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    child: Image.asset("images/33.jpg"),
                  ),
                  Text("data")
                ],
              ),
            )
          ]),
          // SizedBox(
          //   height: 30,
          // ),
        ]),
      ],
    ));
  }
}
  //  Container(
  //           height: 100,
  //           width: 100,
  //           child: Row(
  //             children: [
  //               Card(
  //                 child: Image.asset("images/4.jpg"),
  //               ),
  //               Text("data")
  //             ],
  //           ),
  //         ),
  //         SizedBox(
  //           height: 10,
  //         ),
  //         Container(
  //           height: 100,
  //           width: 100,
  //           child: Row(
  //             children: [
  //               Card(
  //                 child: Image.asset("images/4.jpg"),
  //               ),
  //               Text("data")
  //             ],
  //           ),
  //         ),
