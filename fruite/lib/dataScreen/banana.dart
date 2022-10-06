import 'package:flutter/material.dart';

class Banana extends StatefulWidget {
  const Banana({Key? key}) : super(key: key);

  @override
  State<Banana> createState() => _BananaState();
}

class _BananaState extends State<Banana> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 350,
                child: Image.asset("assets/images/banana.png"),
              ),
              Text(
                "BANANA",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
              ),
              SizedBox(height: 20),
              Text(
                "The banana plant is the largest herbaceous flowering plant.[8] All the above-ground parts of a banana plant grow from a structure usually called The banana fruits develop from the banana heart, in a large hanging cluster, made up of tiers (called ), with up to 20 fruit to a tier. The hanging cluster is known as a bunch, comprising 3–20 tiers",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "U \u20B9 30",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "ADD TO CARD",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
