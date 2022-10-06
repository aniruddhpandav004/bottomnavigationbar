import 'package:flutter/material.dart';

class peppers extends StatefulWidget {
  const peppers({Key? key}) : super(key: key);

  @override
  State<peppers> createState() => _peppersState();
}

class _peppersState extends State<peppers> {
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
                child: Image.asset("assets/images/peppers.png"),
              ),
              Text(
                "PEPPERS",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60),
              ),
              SizedBox(height: 20),
              Text(
                "Apples grown from seed tend to be very different from those of their parents, and the resultant fruit frequently lacks desired characteristics. Generally, apple cultivars are propagated by clonal grafting onto rootstocks.",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      "U \u20B9 50",
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
