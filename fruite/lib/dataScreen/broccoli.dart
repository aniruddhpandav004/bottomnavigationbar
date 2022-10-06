import 'package:flutter/material.dart';

class broccoli extends StatefulWidget {
  const broccoli({Key? key}) : super(key: key);

  @override
  State<broccoli> createState() => _broccoliState();
}

class _broccoliState extends State<broccoli> {
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
                child: Image.asset("assets/images/broccoli.png"),
              ),
              Text(
                "BROCCOLI",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
              ),
              SizedBox(height: 20),
              Text(
                "Broccoli resulted from breeding of landrace Brassica crops in the northern Mediterranean starting in about the sixth century BCE.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "U \u20B9 45",
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
