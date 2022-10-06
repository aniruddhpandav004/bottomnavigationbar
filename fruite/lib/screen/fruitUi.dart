import 'package:flutter/material.dart';

class Fruit extends StatefulWidget {
  const Fruit({Key? key}) : super(key: key);

  @override
  State<Fruit> createState() => _FruitState();
}

class _FruitState extends State<Fruit> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text(
            "GetX Concepts",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '12');
              },
              icon: Icon(Icons.shopping_cart,),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 250,
                      width: 200,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                child: Image.asset(
                                  "assets/images/apple.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'third');
                                },
                                child: Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                          Text(
                            "Apple",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "U\u20B9 60",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: 250,
                      width: 200,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                child: Image.asset(
                                  "assets/images/banana.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '4');
                                },
                                child: Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                          Text(
                            "Banana",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "U\u20B9 30",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: 200,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                child: Image.asset(
                                  "assets/images/broccoli.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '5');
                                },
                                child: Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                          Text(
                            "Broccoli",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "U\u20B9 45",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: 250,
                      width: 200,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                child: Image.asset(
                                  "assets/images/carrot.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '6');
                                },
                                child: Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                          Text(
                            "Carrot",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "U\u20B9 35",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: 200,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                child: Image.asset(
                                  "assets/images/kiwi.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '7');
                                },
                                child: Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                          Text(
                            "Kiwi",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "U\u20B9 34",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: 250,
                      width: 200,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                child: Image.asset(
                                  "assets/images/orange.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '8');
                                },
                                child: Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                          Text(
                            "Orange",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "U\u20B9 45",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: 200,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                child: Image.asset(
                                  "assets/images/peppers.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '9');
                                },
                                child: Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                          Text(
                            "Peppers",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "U\u20B9 50",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Container(
                      height: 250,
                      width: 200,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 180,
                                width: 180,
                                child: Image.asset(
                                  "assets/images/strawberry.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '10');
                                },
                                child: Icon(Icons.add_circle),
                              ),
                            ],
                          ),
                          Text(
                            "Strawberry",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "U\u20B9 45",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 250,
                  width: 200,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 180,
                            width: 180,
                            child: Image.asset(
                              "assets/images/watermelon.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '11');
                            },
                            child: Icon(Icons.add_circle),
                          ),
                        ],
                      ),
                      Text(
                        "Watermelon",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "U\u20B9 55",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
