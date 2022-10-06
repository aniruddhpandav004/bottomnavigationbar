import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharedpreference/screens/provider/homeProvider.dart';
import 'package:sharedpreference/ufils/sharePreference.dart';

import '../../../main.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  TextEditingController txtname = TextEditingController();

 Homeprovider? _homeprovidertrue;
  Homeprovider? _homeproviderfalse;


  @override

  void initState() {
    // TODO: implement initState
    super.initState();

    Provider.of<Homeprovider>(context,listen: false).get();
  }

  Widget build(BuildContext context) {

    _homeproviderfalse = Provider.of<Homeprovider>(context,listen: false);
    _homeprovidertrue = Provider.of<Homeprovider>(context,listen: false);

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("SHARED PREFFERENCE",style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Color(0xffFF92A4),
        actions: [
          Switch(activeColor: Colors.black,value: _homeproviderfalse!.istrue!, onChanged: (value){
            _homeprovidertrue!.Theme(value);
            settheme(value);
            // Provider.of<Homeprovider>(context,listen: false).testDemoTheme();

          })
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: txtname,
          ),
          ElevatedButton(onPressed: (){
            setSHR(txtname.text);
          },style: ElevatedButton.styleFrom(primary: Color(0xffFF92A4)), child: Text("Submit")),

          Text("${_homeprovidertrue!.value}  "),
        ],
      ),
    ));
  }
}
