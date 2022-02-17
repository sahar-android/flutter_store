import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ShopButtomNavigator.dart';
import 'package:http/http.dart';
import 'dart:developer';
import 'package:flutter/foundation.dart';


void main() => runApp(store());

class store extends StatefulWidget {
  @override
  _storeState createState() => _storeState();
}

class _storeState extends State<store> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchItems();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
            elevation: 30,
            title: Text(
              "فروشگاه",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
            centerTitle: true,
            leading: RotatedBox(
              quarterTurns: 2,
              child: Icon(Icons.trending_flat),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  print("tytytytyty");
                },
              )
            ]),
        bottomNavigationBar: ShopButtomNavigator(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurple[900],
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        body:

        Padding(padding: const EdgeInsets.all(15.0),
          child: GridView.count(
            mainAxisSpacing: 15,
            crossAxisSpacing: 10,
            physics: ScrollPhysics(),
            crossAxisCount: 2,
            children: List.generate(10, (int position) {
              return generateItem();
            }),
          ),
        ),
      ),
    );
  }

  void fetchItems() async{
    //var url='http://www.welearnacademy.ir/flutter/products_list.json';
    var url='https://www.simyapp.ir/products.json';
    Response response=await get(Uri.parse(url));
    print(response.statusCode);
    print(utf8.decode(response.bodyBytes));
    var test=utf8.decode(response.bodyBytes);
    // String jsonsDataString = response.body.toString(); // toString of Response's body is assigned to jsonDataString
    // var _data = jsonDecode(jsonsDataString);
    //print(_data.toString());
    debugPrint('movieTitle: $test');
  }
}

Card generateItem() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0)
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 90,
            height: 90,
            child:
            Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text("قیمت",
            style: TextStyle(
              fontFamily: "Vazir",
              color: Colors.blue[600],
              fontSize: 14.0,

            ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text("عنوان",
              style: TextStyle(
                fontFamily: "Vazir",
                color: Colors.blue[600],
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
