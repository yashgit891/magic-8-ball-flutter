import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Ask me anything'),
      ),
      body: Ball(),
    );
  }
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: (){
          setState(() {
            ballnumber=Random().nextInt(5)+1;
          });
        },
        child: Image.asset('images/ball$ballnumber.png'),
      ),
    );
  }
}

