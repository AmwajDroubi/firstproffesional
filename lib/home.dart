import 'package:firstproffesional/details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categories = [
    {"icon": Icons.laptop, "title": "Laptop"},
    {"icon": Icons.phone, "title": "Mobile"},
    {"icon": Icons.pedal_bike, "title": "Bike"},
    {"icon": Icons.car_crash_sharp, "title": "Car"},
  ];
  List item = [
    {"image": 'images/1.jpg', "name": "Car", 'price': '50000\$'},
    {"image": 'images/2.jpg', "name": "Bike", 'price': '300\$'},
    {"image": 'images/33.jpg', "name": "gift", 'price': '50\$'},
    {"image": 'images/4.jpg', "name": "Mobile", 'price': '1000\$'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 35,
              ),
              label: '*'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                size: 35,
              ),
              label: '*'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                size: 35,
              ),
              label: '*')
        ],
      ),
      body: Container(
          padding: const EdgeInsets.all(30),
          child: ListView(children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.grey[150],
                      filled: true,
                      hintText: 'Search',
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 15)),
                const Icon(
                  Icons.menu,
                  size: 40,
                )
              ],
            ),
            const Padding(
                padding: EdgeInsets.only(
              top: 40,
            )),
            const Text(
              'Categories',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Padding(
                padding: EdgeInsets.only(
              bottom: 20,
            )),
            Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            margin: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(100)),
                            child: Icon(
                              categories[index]['icon'],
                              size: 40,
                            ),
                          ),
                          Text(
                            categories[index]['title'],
                            style: const TextStyle(fontSize: 25),
                          )
                        ],
                      ),
                    );
                  }),
                )),
            const Text(
              'Best sealling',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            GridView.builder(
              //scrollDirection: Axis.horizontal,
              itemCount: item.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ItemDetails(
                                data: item[index],
                              )));
                    },
                    child: Card(
                      child: SingleChildScrollView(
                        child: Column(children: [
                          Container(
                            padding: const EdgeInsets.only(top: 30),
                            child: Image.asset(
                              item[index]['image'],
                              height: 90,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            item[index]['name'],
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                          Text(item[index]['price'],
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.red))
                        ]),
                      ),
                    ));
              },
            )
          ])),
    );
  }
}
