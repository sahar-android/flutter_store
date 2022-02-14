import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ShopButtomNavigator.dart';

void main() => runApp(store());

class store extends StatefulWidget {
  @override
  _storeState createState() => _storeState();
}

class _storeState extends State<store> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: Padding(
          padding: const EdgeInsets.all(15.0),
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
}

Card generateItem() {
  return Card(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 90,
          height: 90,
          child:
          Image.network("https://malleys.com/wp-content/uploads/2017/02/bigstock-Chocolate-Covered-Strawberries-165270170.jpg"),
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
  );
}
