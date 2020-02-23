import 'package:flutter/material.dart';

bottomBar() {
  return BottomAppBar(
    shape: CircularNotchedRectangle(),
    elevation: 4.0,
    notchMargin: 4,
    color: Color(0xFfD6B480),
    child: Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          MaterialButton(
            onPressed: (){},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.home,color: Colors.white,),Text('Home',style: TextStyle(color: Colors.white),)
              ],
            ),

          ),MaterialButton(
            onPressed: (){},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.shopping_cart,color: Colors.white60,),Text('Order',style: TextStyle(color: Colors.white60),)
              ],
            ),

          ),MaterialButton(
            onPressed: (){},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.home,color: Colors.white60,),Text('Home',style: TextStyle(color: Colors.white60),)
              ],
            ),

          ),MaterialButton(
            onPressed: (){},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.person_outline,color: Colors.white60,),Text('Profile',style: TextStyle(color: Colors.white60),)
              ],
            ),

          ),
        ],
      ),
    ),

  );
//  return BottomNavigationBar(
//    backgroundColor: Colors.white,
//    elevation: 4.0,
//    items: const [
//      BottomNavigationBarItem(
//        icon: Icon(
//          Icons.home,
//          color: Colors.brown,
//        ),
//        title: Text('Home', style: TextStyle(color: Colors.brown)),
//      ),
//      BottomNavigationBarItem(
//          icon: Icon(
//            Icons.shopping_cart,
//            color: Colors.brown,
//          ),
//          title: Text('Order', style: TextStyle(color: Colors.brown))),
//      BottomNavigationBarItem(
//          icon: Icon(
//            Icons.favorite,
//            color: Colors.brown,
//          ),
//          title: Text('Favorite')),
//      BottomNavigationBarItem(
//          icon: Icon(
//            Icons.person_outline,
//            color: Colors.brown,
//          ),
//          title: Text('Profile'))
//    ],
  //);
}
