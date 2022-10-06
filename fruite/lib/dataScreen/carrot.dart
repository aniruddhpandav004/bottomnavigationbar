import 'package:flutter/material.dart';

class carrot extends StatefulWidget {
  const carrot({Key? key}) : super(key: key);

  @override
  State<carrot> createState() => _carrotState();
}

class _carrotState extends State<carrot> {
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
                child: Image.asset("assets/images/carrot.png"),
              ),
              Text(
                "CARROT",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
              ),
              SizedBox(height: 20),
              Text(
                "Both written history and molecular genetic studies indicate that the domestic carrot has a single origin in Central Asia.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "U \u20B9 35",
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
