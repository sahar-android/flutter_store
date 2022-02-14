import 'package:flutter/material.dart';

class ShopButtomNavigator extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
       color: Colors.amber[400],
      shape: CircularNotchedRectangle(),
      notchMargin: 10.0,
       clipBehavior: Clip.antiAlias,
       child: Container(
         height: 60,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             Container(
               height: 50,
               width: MediaQuery.of(context).size.width/2-20,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children:<Widget> [
                   Icon(Icons.home,
                   color: Colors.blue[700],
                   ),
                   Icon(Icons.person_outline,
                     color: Colors.blue[700],
                   ),

                 ],
               ),
             ),
             Container(
               height: 50,
               width: MediaQuery.of(context).size.width/2-20,
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children:<Widget> [
                   Icon(Icons.shopping_basket,
                     color: Colors.blue[700],
                   ),
                   Icon(Icons.outbox_outlined,
                     color: Colors.blue[700],
                   ),

                 ],
               ),
             )
           ],
         ),

       ),
    );
  }
}
