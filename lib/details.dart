import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  const ItemDetails({super.key, this.data});
  final data;
  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_rounded,
              size: 35,
            ),
            Text(
              ' Marka',
              style: TextStyle(fontSize: 35),
            ),
            Text(
              ' Boots',
              style: TextStyle(color: Colors.purple, fontSize: 35),
            ),
          ],
        ),
        backgroundColor: Colors.grey[200],
        actions: const [
          Icon(
            Icons.menu,
            size: 35,
          )
        ],
      ),
      body: ListView(children: [
        Image.asset(widget.data['image']),
        Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            widget.data['name'],
            style: const TextStyle(fontSize: 35),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          widget.data['price'],
          style: const TextStyle(fontSize: 25, color: Colors.red),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Color: ',
              style: TextStyle(fontSize: 25, color: Colors.grey[500]),
            ),
            Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                )),
            Text(
              '  Grey',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              width: 40,
            ),
            Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.black,
                )),
            Text(
              '  Black',
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
        Text(
          'Size:    30      33     40     45   ',
          style: TextStyle(fontSize: 25, color: Colors.grey),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          margin: EdgeInsets.all(30),
          child: MaterialButton(
            padding: EdgeInsets.all(10),
            onPressed: () {},
            textColor: Colors.white,
            color: Colors.black,
            child: Text(
              'Confairm',
              style: TextStyle(fontSize: 30),
            ),
          ),
        )
      ]),
    );
  }
}
