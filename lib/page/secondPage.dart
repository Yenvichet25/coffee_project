import 'package:flutter/material.dart';
import 'package:untitled1/theme.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xFFD49A9F),
            height: size.height,
            width: size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 35, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Iced Mocha',
                    style: title.copyWith(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      width: size.width/2,
                      child: Text(
                        'I Love You me too I Love You me too I Love You me tooI Love You me tooI Love You me tooI Love You me too',style: orderText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: _buildContainer(),
              height: size.height - size.height/2.5,
              width: size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(70))),
            ),
          ), Positioned(
            top: size . height /5.5,
            right: 0,
            child: Container(
              width: 150,
              height: 250,

              decoration: BoxDecoration(

                image: DecorationImage(image: AssetImage('assets/images/cub1.png'))
              ),
            ),
          ),
        ],
      ),
    );
  }
}
_buildContainer(){
  return Column(
    children: <Widget>[
      Container(
        height: 50,

      ),
      Container(),
    ],
  );
}