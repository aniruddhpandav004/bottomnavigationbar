import 'package:flutter/material.dart';

class shopScreen extends StatefulWidget {
  const shopScreen({Key? key}) : super(key: key);

  @override
  State<shopScreen> createState() => _shopScreenState();
}

class _shopScreenState extends State<shopScreen> {
  List<Product> product = [];
  TextEditingController txtname = TextEditingController();
  TextEditingController txtqty = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtdis = TextEditingController();

  int billamount = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Product Details",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.tealAccent,
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: "User Name",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Address",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Contact No",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                // TextField(
                //   decoration: InputDecoration(
                //     labelText: "Payment Method",
                //     border: OutlineInputBorder(),
                //   ),
                // ),
                SizedBox(height: 30),
                Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: txtname,
                            decoration: InputDecoration(
                              labelText: "Product Name",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: txtqty,
                            decoration: InputDecoration(
                              labelText: "Oty",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: txtprice,
                            decoration: InputDecoration(
                              labelText: "Price",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: txtdis,
                            decoration: InputDecoration(
                              labelText: "Discount",
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Product pro = Product(
                        name: txtname.text,
                        qty: txtqty.text,
                        price: txtprice.text,
                        dis: txtdis.text,
                      );
                      setState(() {
                        product.add(pro);
                        txtname = TextEditingController();
                        txtqty = TextEditingController();
                        txtprice = TextEditingController();
                        txtdis = TextEditingController();
                      });
                      total();
                    },
                    child: Text("ADD")),
                Expanded(
                  child: ListView.builder(
                    itemCount: product.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            product.removeAt(index);
                          });
                        },
                        child: ListTile(
                          title: Text("${product[index].name}"),
                          leading: Text("${product[index].qty}"),
                          subtitle: Text("${product[index].price}"),
                          trailing: Text("${product[index].dis}"),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        alignment: Alignment.center,
                        color: Colors.grey,
                        child: Text("Total Amount : ${billamount}"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void total() {
    int totalAmount = 0;
    int totalDiscount = 0;
    for (int i = 0; i < product.length; i++) {
      totalAmount =
          int.parse(product[i].price!) * int.parse(product[i].price!) +
              totalAmount;
      totalAmount = int.parse(product[i].dis!) + totalDiscount;
    }
    setState(() {
      billamount = totalAmount - totalDiscount;
    });
  }
}

class Product {
  String? name, qty, price, dis;

  Product({this.name, this.qty, this.price, this.dis});
}
