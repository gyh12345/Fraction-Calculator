

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  _MyAppState createState() => _MyAppState();
  }
  class _MyAppState extends State<MyApp> {
  TextEditingController _num1ctrl = new TextEditingController();
  TextEditingController _num2ctrl = new TextEditingController();
  TextEditingController _num3ctrl = new TextEditingController();
  TextEditingController _num4ctrl = new TextEditingController();
  TextEditingController _num5ctrl = new TextEditingController();
  TextEditingController _num6ctrl = new TextEditingController();
  int a,b,c,d;
  int answerUp = 0, answerDown = 0;
  String dropDownValue = '+';

  Widget build (BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
            title: Text('Fraction Calculator'),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(//1st row
                children:[
                  Flexible(
                    child:Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 30, 5),
                    child: TextField(
                      controller: _num1ctrl,
                      textAlign : TextAlign.center,
                      keyboardType: TextInputType.numberWithOptions(),
                      style: new TextStyle(
                        fontSize: 26,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                      decoration: new InputDecoration(
                        enabledBorder:OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                            ),
                          ),
                        filled: true,
                        fillColor: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child:Padding(
                    padding: EdgeInsets.fromLTRB(35, 20, 15, 5),
                    child: TextField(
                      controller: _num2ctrl,
                      textAlign : TextAlign.center,
                      keyboardType: TextInputType.numberWithOptions(),
                      style: new TextStyle(
                        fontSize: 26.0,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                      decoration: new InputDecoration(
                        enabledBorder:OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                            ),
                          ),
                        filled: true,
                        fillColor: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child:Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 20, 5),
                    child: TextField(
                      controller: _num5ctrl,
                      readOnly:true,//make the textfield can read only, cannot type anything
                      textAlign : TextAlign.center,
                      style: new TextStyle(
                        color: const Color(0xFF000000),
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto"),
                      decoration: new InputDecoration(
                        hintText:"?",
                        enabledBorder:OutlineInputBorder(
                          borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                            ),
                          ),
                        filled: true,
                        hintStyle: new TextStyle(color: Colors.grey[800]),
                        fillColor: Colors.white70),
                      ),
                    ),
                  ),
                ],
              ),
              
              Row(//2nd row
                children: <Widget>[
                  //Flexible(
                  Flexible(
                    child:Padding(
                     padding:EdgeInsets.symmetric(horizontal:22.0),
                      child: Container(
                        height: 4.0,
                        width: 80.0,
                        color: Colors.black,
                      )
                    )  
                  ),
                    
                  //),

                  DropdownButton<String>(
                    value: dropDownValue,
                    icon: Icon(Icons.arrow_downward,color: Colors.white70),
                    iconSize: 15,
                    elevation:15,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Roboto",
                      color: Colors.black,
                    ),
                    underline: Container(
                      decoration: BoxDecoration(
                        border:Border.all(color: Colors.white70)
                      ),
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropDownValue = newValue;
                      });
                    },
                    items: <String> ['+', '-', 'x', '/']
                    .map<DropdownMenuItem <String>>((String value){
                      return DropdownMenuItem<String>(
                        value: value,
                        child:Text(value),
                      );
                    })
                    .toList(),
                  ),

                  Flexible(
                    child:Padding(
                      padding:EdgeInsets.symmetric(horizontal:20.0),
                      child: Container(
                        height: 4.0,
                        width: 80.0,
                        color: Colors.black,
                      )
                    )  
                  ),

                  Text("=",
                    style:TextStyle(//set anything you want about the texts
                      fontSize: 30
                    )
                  ),

                  Flexible(
                    child:Padding(
                      padding:EdgeInsets.symmetric(horizontal:20.0),
                      child: Container(
                        height: 4.0,
                        width: 80.0,
                        color: Colors.black,
                      )
                    )  
                  )
                ],
              ),
              
              Row(//3rd row
                children: <Widget>[
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 30,30),
                      child: TextField(
                        controller: _num3ctrl,
                        keyboardType: TextInputType.numberWithOptions(),
                        textAlign : TextAlign.center,
                        style: new TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                            ),
                          )
                        )
                      )  
                    )
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(35, 0, 15, 30),
                      child: TextField(
                        controller: _num4ctrl,
                        keyboardType: TextInputType.numberWithOptions(),
                        textAlign : TextAlign.center,
                        style: new TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                            ),
                          )
                        )
                      )  
                    )
                  ),
                  Flexible(//answer textfield down
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 20, 30),
                      child: TextField(
                        controller: _num6ctrl,
                        readOnly:true,//make the textfield can read only, cannot type anything
                        textAlign : TextAlign.center,
                        style: new TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Roboto"),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white70,
                          hintText: "?",//putting a question mark into the answer textfield 
                          enabledBorder: OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                            const Radius.circular(10.0),
                            ), 
                          )
                        )
                      )  
                    )
                  )
                ],
              ),
              
              Row(//4th row
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[                  
                  RaisedButton(//make a button to press
                  shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                  side: BorderSide(color: Colors.black)),
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    textColor: Colors.black,
                    color: Colors.white,
                    onPressed: (){
                      calculateNum();
                    },
                    child: new Text("CALCULATE"),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(17, 20, 20, 20),
                  ),
                  RaisedButton(
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.black)),
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    textColor: Colors.black,
                    color: Colors.white,
                    
                    onPressed: (){
                      reset();
                    },
                    child: new Text("CLEAR")
                  )
                ],
              )
              ],
            )
          )
        )
      );
    }

    void calculateNum(){//a method for calculation
        a = int.parse(_num1ctrl.text);
        b = int.parse(_num2ctrl.text);
        c = int.parse(_num3ctrl.text);
        d = int.parse(_num4ctrl.text);
        int temp = 0;//to temporarily store answer

      if(dropDownValue == "+"){
        if (c/d == 1){//if both denominators are equal
            answerUp = a + b;
            answerDown = c;
        }
        else if (c%d == 0){//if first denominator can factorize the second one
            temp = (c / d) as int;//cast double into int
            d = d * temp;
            b = b * temp;
            answerUp = a + b;
            answerDown = c;
        }
        else if (d%c == 0){//if second denominator can factorize the first one
            temp = (d / c)as int;//cast double into int
            c = c * temp;
            a = a * temp;
            answerUp = a + b;
            answerDown = c;
        }
        else if (c/d > 1 || d/c > 1){//if both denominators can't be factorized
            a = a * d;
            b = b * c;
            c = c * d;
            d = d * c;
            answerUp = a + b;
            answerDown = c;
        }
      }
      else if(dropDownValue == "-"){
        if (c/d == 1){//if both denominators are equal
            answerUp = a - b;
            answerDown = c;
        }
        else if (c%d == 0){//if first denominator can factorize the second one
            temp = (c / d) as int;//cast double into int
            d = d * temp;
            b = b * temp;
            answerUp = a - b;
            answerDown = c;
        }
        else if (d%c == 0){//if second denominator can factorize the first one
            temp = (d / c)as int;//cast double into int
            c = c * temp;
            a = a * temp;
            answerUp = a - b;
            answerDown = c;
        }
        else if (c/d > 1 || d/c > 1){//if both denominators can't be factorized
            a = a * d;
            b = b * c;
            c = c * d;
            d = d * c;
            answerUp = a - b;
            answerDown = c;
        }
      }
      else if (dropDownValue =="x"){
        answerUp = a * b;
        answerDown = c * d;
      }
      else if (dropDownValue == "/"){
        answerUp = a * d;
        answerDown = c * b;
      }       
        setState((){
          _num5ctrl.text = "$answerUp";//set answer to textfield
          _num6ctrl.text = "$answerDown";//set answer to textfield
        });
    }

    void reset(){
      setState((){
        _num1ctrl.clear();
        _num2ctrl.clear();
        _num3ctrl.clear();
        _num4ctrl.clear();
        _num5ctrl.clear();
        _num6ctrl.clear();
        answerUp = 0;
        answerDown = 0;
      });
    }
}