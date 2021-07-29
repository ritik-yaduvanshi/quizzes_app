import 'package:flutter/material.dart';
import 'package:quizzes/QuestionBank.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'Texts.dart';

class ScoreCard extends StatefulWidget {

  String name = '';
  String lName = '';
  double wrongScorePer = 0.0;
  double wrongAnsPer = 0.0;
  double correctScorePer = 0.0;
  double correctAnsPer = 0.0;

  int totalScore = 0;
  int correctAns = 0;
  int wrongAns = 0;

  String results = '';

  ScoreCard(String name,String lName,double wrongScorePer,double wrongAnsPer,double correctScorePer,double correctAnsPer,int totalScore,int correctAns,int wrongAns,String results){
    this.name = name;
    this.lName = lName;
    this.wrongScorePer = wrongScorePer;
    this.wrongAnsPer = wrongAnsPer;
    this.correctScorePer = correctScorePer;
    this.correctAnsPer = correctAnsPer;
    this.totalScore = totalScore;
    this.correctAns = correctAns;
    this.wrongAns = wrongAns;
    this.results = results;
  }

  @override
  _ScoreCardState createState() => _ScoreCardState(name,lName,wrongScorePer,wrongAnsPer,correctScorePer,correctAnsPer,totalScore,correctAns,wrongAns,results);
}

class _ScoreCardState extends State<ScoreCard> {

  QuestionBank ques = new QuestionBank();
  Texts text = new Texts();

  String name = '';
  String lName = '';
  double wrongScorePer = 0.0;
  double wrongAnsPer = 0.0;
  double correctScorePer = 0.0;
  double correctAnsPer = 0.0;
  int totalScore = 0;
  int correctAns = 0;
  int wrongAns = 0;

  String results = '';
  
  String getSubName(String nam){
    String res = '';
    if(nam.compareTo('CquesList')==0){
      res = 'C Programming';
    }
    else if(nam.compareTo('chemList')==0){
      res = 'Chemistry';
    }
    else if(nam.compareTo('engList')==0){
      res = 'English';
    }
    else if(nam.compareTo('gkList')==0){
      res = 'General Knowledge';
    }
    else if(nam.compareTo('htmlList')==0){
      res = 'Html';
    }
    else if(nam.compareTo('javaList')==0){
      res = 'Java';
    }
    else if(nam.compareTo('jsList')==0){
      res = 'JavaScript';
    }
    else if(nam.compareTo('mathList')==0){
      res = 'Mathematics';
    }
    else if(nam.compareTo('physicsList')==0){
      res = 'Physics';
    }
    else if(nam.compareTo('pythonList')==0){
      res = 'Python';
    }
    return res;
  }

  _ScoreCardState(String name,String lName,double wrongScorePer,double wrongAnsPer,double correctScorePer,double correctAnsPer,int totalScore,int correctAns,int wrongAns,String results){
    this.name = name;
    this.lName = lName;
    this.wrongScorePer = wrongScorePer;
    this.wrongAnsPer = wrongAnsPer;
    this.correctScorePer = correctScorePer;
    this.correctAnsPer = correctAnsPer;
    this.totalScore = totalScore;
    this.correctAns = correctAns;
    this.wrongAns = wrongAns;
    this.results = results;
  }
  Widget QuesView(String n){
    var CQuesList = ListView.builder(itemCount: 10,itemBuilder: (BuildContext context, int index)
    {return ListTile(
      title: Text('${index+1}. ${ques.getElement(index,n)},',style: TextStyle(color: Colors.white),),
      subtitle: Text('Answer : ${ques.getAnsElement(index,n)}',style: TextStyle(color: Colors.white),),
    );},
    );
    return CQuesList;
  }
  void clear(){
    name = '';
    lName = '';
    wrongScorePer = 0.0;
    wrongAnsPer = 0.0;
    correctScorePer = 0.0;
    correctAnsPer = 0.0;
    totalScore = 0;
    correctAns = 0;
    wrongAns = 0;

    results = '';
  }
  List<Icon> iconsList = [];
  _ScoreCardState.List(Icon ic){
    iconsList.add(ic);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Score Card'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          onPressed: (){
            setState(() {
              clear();
              Navigator.of(context).pop();
            });
          },
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            text.textss('Question Review',20.0,'Uchen',Colors.white),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 300.0,
                width: 380.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.black38,
                ),
                child: QuesView(lName),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child:Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 200.0,
                      width: 380.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.black,
                      ),
                      child: CircularPercentIndicator(
                        radius: 100.0,
                        percent: correctAnsPer,
                        progressColor: Colors.green,
                        lineWidth: 12.0,
                        animation: true,
                        center: text.texts('$correctScorePer%',20.0,'Uchen',Colors.green),
                        footer: text.texts('Correct Ans',15.0,'uchen', Colors.white),
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 200.0,
                      width: 380.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.black,
                      ),
                      child: CircularPercentIndicator(
                        radius: 100.0,
                        percent: wrongAnsPer,
                        progressColor: Colors.red,
                        lineWidth: 12.0,
                        animation: true,
                        center: text.texts('$wrongScorePer%',20.0,'Uchen',Colors.red),
                        footer: text.texts('Wrong Ans',15.0,'uchen', Colors.white),
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 200.0,
                width: 380.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.black,
                ),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: [
                      text.textss('Performance Report',18,'Uchen',Colors.white),
                      SizedBox(child: Divider(height: 5.0,color: Colors.white,),),
                      text.texts('Name : $name',14.0,'Uchen',Colors.white),
                      text.texts('Quiz Subject : ${getSubName(lName)}',14.0,'Uchen',Colors.white),
                      text.texts('Total Score : $totalScore',14.0,'Uchen',Colors.white),
                      text.texts('Correct Ans :  $correctAns',14.0,'Uchen',Colors.white),
                      text.texts('Wrong Ans : $wrongAns',14.0,'Uchen',Colors.white),
                      text.texts('Result : $results',14.0,'Uchen',Colors.white),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
