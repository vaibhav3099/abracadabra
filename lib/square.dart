import 'package:flutter/material.dart';

class Square extends StatefulWidget {
  @override
  State createState() =>  SquareState();
}

class SquareState extends State<Square> with SingleTickerProviderStateMixin{

  AnimationController animationController;
  Animation<double> animation;
  // double angleOfSquare;

  @override
  void initState() {
    super.initState();
    //angleOfSquare = 30.0;
    animationController =  AnimationController(
        duration: Duration(milliseconds: 1000),
        vsync: this,
    );
    animation =  CurvedAnimation(parent: animationController , curve: Curves.ease);
    animation.addListener(() => this.setState(() {}));
    animation.addStatusListener((AnimationStatus status) {});
    animationController.repeat();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:  Stack(
        children: <Widget>[ Transform.rotate(
          angle: animation.value * -10,
          child:  Container(
            color: Colors.orange,
            height: animation.value * 200,
            width: animation.value * 200,
          ),
        ),
         Transform.rotate(
          angle: animation.value * 10,
          child:  Container(
            color: Colors.orange,
            height: animation.value * 200,
            width: animation.value * 200,
          ),
        ),
           Container(
            child:  Text("Are you Watching closely ?",
                style: TextStyle(
                  color: Colors.white,
                  decorationColor: Colors.blue,
                  fontSize: animation.value * 30,

                ),
            ),
            height: animation.value * 250,
            width: animation.value * 250,
          )

      ]
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

}