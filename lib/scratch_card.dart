import 'package:flutter/material.dart';
import 'package:scratcher/scratcher.dart';

class Scratch_Card extends StatelessWidget {
  double _opacity = 0.0;


  Future<void>scratchDialog(BuildContext context){
    return showDialog(context: context,
    builder: (BuildContext context){
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        title: Align(
          alignment: Alignment.center,
          child: Text("You Earned Gift Card",
            style: TextStyle(
                color: Colors.green,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
        ),
        content: StatefulBuilder(builder: (context, StateSetter setState){
          return Scratcher(
            accuracy: ScratchAccuracy.low,
              threshold: 25,
              brushSize: 40,
              onThreshold: (){
              setState((){
                _opacity = 1;
              });
              },
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 250),
                opacity: _opacity,
                child: Container(
                  height: 300,
                  width: 300,
                  alignment: Alignment.center,
                  child: Text("You earned 100\$",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40, color: Colors.green),
                  ),


                ),
              ),

          );
        }),
      );
    }
    );

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FlatButton(
        onPressed: (){
          scratchDialog(context);
        },
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
        color: Colors.green,
        child: Text("Get a Scratch Card", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),

      ),
    );
  }
}
