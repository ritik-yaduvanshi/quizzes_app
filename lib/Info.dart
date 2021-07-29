import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizzes/Chemistry.dart';
import 'package:quizzes/Cprogram.dart';
import 'package:quizzes/GeneralKnowledge.dart';
import 'package:quizzes/HtmlList.dart';
import 'package:quizzes/InfoPage.dart';
import 'package:quizzes/JsList.dart';
import 'package:quizzes/MathList.dart';
import 'package:quizzes/PhysicsList.dart';
import 'package:quizzes/PythonList.dart';
import 'package:quizzes/Texts.dart';

import 'English.dart';
import 'JavaList.dart';
class Info extends StatefulWidget {

  String name = '';
  Info(String name){
    this.name = name;
  }

  String getName(){
    return name;
  }

  @override
  _InfoState createState() => _InfoState(name);
}

class _InfoState extends State<Info> {
  Texts textObj = new Texts();

  double _height = 50.0;
  double _width = 150.0;

  String userName = '';

  _InfoState(String name){
    userName = name;
  }
  void _updateBox(){
    if(_width==150.0){
      setState(() {
        _height = 180.0;
        _width = 350.0;
      });
    }
    else{
      setState(() {
        _height = 50.0;
        _width = 150.0;
      });
    }
  }
  Widget boxe(){
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      height: _height,
      width: _width,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListView(
        children: [
          ListTile(
            title: textObj.texts('How To Start?',15.0,'Uchen',Colors.black),
            subtitle: Text('You Can select any subject which is given above.When you will choose any one subject then '
                'quiz of that subject will be started.There is given 10 subjects like C,Java,Math,Chemistry,Physics etc.'
                ' if you Want to make Your Own Quiz question then you have to choose create quiz Button and You will have.'
                'to make your own ques and Answer then Press Start Button!'
                ),
          ),
        ],
      ),
    );
  }
  Widget box(String imgPath){
    return Container(
      height: 70.0,
      width: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Image(
        image: AssetImage('$imgPath'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
       leading: IconButton(
         icon: Icon(Icons.arrow_back),
         onPressed: (){
           setState(() {
             Navigator.of(context).pop();
           });
         },
       ),
       actions: [
         IconButton(
           icon: Icon(Icons.menu),
           onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context)=>InfoPage()));
           },
         ),
       ],
       backgroundColor: Colors.teal,
       bottom: PreferredSize(
         preferredSize: Size.fromHeight(210.0),
         child: Column(
           children: <Widget>[
             textObj.texts('Quiz',80.0,'Niconne',Colors.white),
             SizedBox(height: 10.0,),
             ListTile(
               title: textObj.texts('Let\'s Show Your Skills!',20.0,'Uchen',Colors.black87),
               subtitle: Text('This is a quiz time,\nChoose your Subject and\nStart The Quiz And\nMake Best Score!'),
             ),
             SizedBox(height: 50.0,),
           ],
         ),
       ),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100.0),bottomRight: Radius.circular(100.0)),
       ),
     ),
     body: SafeArea(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(height: 50.0,),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: InkWell(
                    child: box('Images/c.png'),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cprogram(userName)));
                      });
                    },
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: box('Images/chem.png'),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Chemistry(userName)));
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                    child: box('Images/eng.png'),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>English(userName)));
                      });
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    child: box('Images/gk.png'),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>GeneralKnowledge(userName)));
                      });
                    },
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: box('Images/html.png'),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HtmlList(userName)));
                      });
                    },
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: box('Images/java.png'),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>JavaList(userName)));
                      });
                    },
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: box('Images/js.png'),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>JsList(userName)));
                      });
                    },
                  )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: InkWell(
                    child: box('Images/math.png'),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MathList(userName)));
                      });
                    },
                  ),
                ),
                Expanded(
                  child: InkWell(
                    child: box('Images/physics.png'),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PhysicsList(userName)));
                      });
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: InkWell(
                      child: box('Images/python.png'),
                    onTap: (){
                      setState(() {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PythonList(userName)));
                      });
                    },
                  ),
                ),
              ],
            ),
            Text('Tap On Subject Icon !',style: TextStyle(fontSize: 15.0,color: Colors.blue,fontFamily: 'Uchen'),),
            Expanded(
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.zoom_in),
                    onPressed: (){
                      _updateBox();
                    },
                  ),
                  Expanded(
                    child: boxe(),
                  ),
                  SizedBox(width: 10.0,),
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      onPressed: (){
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cprogram(userName)),);
                        });
                      },
                      child: Text('Start',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Uchen',fontSize: 20.0),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
   );
  }
}

