import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled1/bottomBar.dart';
import 'package:untitled1/clip_background.dart';
import 'package:untitled1/page/scale_route.dart';
import 'package:untitled1/page/secondPage.dart';
import 'package:untitled1/theme.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.favorite,
        ),
        backgroundColor: Color(0xFFD6B480),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: bottomBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: size.width / 1.5,
                  height: size.height * 0.18,
                  child: _appBarBuild(),
                ),
              ],
            ),
            Container(
//              decoration: BoxDecoration(
//                border: Border(
//                  top: BorderSide(width: 0,color: Colors.grey.withOpacity(0)),
//                  right: BorderSide(width: 0),
//                  left: BorderSide(width: 0),
//                  bottom: BorderSide(width: 1,color: Colors.grey.withOpacity(0.4))
//                )
//              ),
              height: 50,
              child: _fistTitle(),
            ),
            Container(
              height: 300,
              child: _listViewMenu(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 40,
                child: _secondTitle(),
              ),
            ),
            Container(
              height: 150,
              child: _secondListView(),
            ),
          ],
        ),
      ),
    );
  }
}

_appBarBuild() {
  return Padding(
    padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Welcome to NoiCafe',
          style: title,
        ),
        Text(
          'Lets select the best taste of your next coffe break',
          style: subTitle,
        )
      ],
    ),
  );
}

_fistTitle() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Taste of the week',
          style: menu,
        ),
        Text(
          'See More',
          style: menu.copyWith(fontWeight: FontWeight.w300),
        )
      ],
    ),
  );
}

_secondTitle() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Explore near by',
          style: menu,
        ),
        Text(
          'See More',
          style: menu.copyWith(fontWeight: FontWeight.w300),
        )
      ],
    ),
  );
}

_listViewMenu() {
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (_, int index) {
        return Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            width: 400,
            child: Stack(
              children: <Widget>[
                Center(
                  child: ClipPath(
                    clipper: BackClipper(),
                    child: Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.brown[300], width: 0.3),
                        color: Color(0xFFD6B480),
                      ),
                      width: 170,
                      height: 230,
                      child: Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  '\$4.99',
                                  style: price,
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: CupertinoButton(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30),
                                padding: EdgeInsets.all(3),
                                child: Icon(Icons.favorite,
                                    color: index ==0
                                        ? Colors.red
                                        : Colors.grey),
                                onPressed: () {},
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 70,
                      height: 100,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/cub1.png'))),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 30,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Color(0xFF3D3430),
                        borderRadius: BorderRadius.circular(30)),
                    child: FlatButton(
                      child: Text(
                        'Order Now',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(_,MaterialPageRoute(
                          builder: (context)=> SecondPage()
                        ));
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      });
}

_secondListView() {
  return ListView.builder(
      padding: EdgeInsets.only(left: 8),
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (_, int index) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            width: 200,
            decoration: BoxDecoration(
                color: Color(0xFFD6B480),
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/coffee.jpg'))),
          ),
        );
      });
}
