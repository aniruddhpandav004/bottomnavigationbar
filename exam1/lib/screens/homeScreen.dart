import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<student> l1 = [];
  TextEditingController txtname = TextEditingController();
  TextEditingController txtid = TextEditingController();
  TextEditingController txtstd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFFF0DF),
        appBar: AppBar(
          title: Text(
            "MY APP",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [
            Icon(
              Icons.settings,
              color: Colors.white,
            )
          ],
        ),
        drawer: Drawer(),
        body: Center(
          child: ListView.builder(
            itemCount: l1.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${l1[index].name}"),
                subtitle: Text("${l1[index].std}"),
                leading: Text("${l1[index].id}"),
                trailing: Container(
                  width: 80,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: () {
                          setState(() {
                            l1.removeAt(index);
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.edit,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          update(index, student(id: txtid.text,std: txtstd.text,name: txtname.text));
                          dailog();
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            dailog();
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
  void update(int index,student s2)
  {
    l1[index] = s2;
  }
  void dailog()
  {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: txtid,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("GRID"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: txtname,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("NAME"),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: txtstd,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("STUDY"),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    student s1 = student(
                      name: txtname.text,
                      id: txtid.text,
                      std: txtstd.text,
                    );
                    setState(() {
                      l1.add(s1);
                    });
                    Navigator.pop(context);
                  },
                  style:
                  ElevatedButton.styleFrom(primary: Colors.black),
                  child: Text("Add"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class student {
  String? id, name, std;

  student({this.id, this.name, this.std});
}
