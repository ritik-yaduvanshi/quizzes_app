import 'package:flutter/material.dart';
import 'QuestionBank.dart';
import 'ScoreCard.dart';
import 'Texts.dart';

class HtmlList extends StatefulWidget {
  String name = '';
  HtmlList(this.name);

  @override
  _HtmlListState createState() => _HtmlListState(name);
}

class _HtmlListState extends State<HtmlList> {

  Texts text = new Texts();
  QuestionBank ques = new QuestionBank();
  int round = 0;

  //list Name of choices
  String listOfChoice1 = 'htmlList1';
  String listOfChoice2 = 'htmlList2';
  String listOfChoice3 = 'htmlList3';
  String listOfChoice4 = 'htmlList4';

  String name = '';
  String lName = 'htmlList';
  double wrongScorePer = 0.0;
  double wrongAnsPer = 0.0;
  double correctScorePer = 0.0;
  double correctAnsPer = 0.0;

  _HtmlListState(this.name);

  int totalScore = 0;
  int correctAns = 0;
  int wrongAns = 0;

  String resultMaker(){
    String results = '';
    if(totalScore >=8){
      results = 'OutStanding Performance!';
    }
    else if(totalScore < 8 && totalScore >=7){
      results = 'Good Performance!';
    }
    else if(totalScore <7 && totalScore >=5){
      results = 'Average Performance';
    }
    else{
      results = 'Try Again!';
    }
    return results;
  }
  Icon right = Icon(Icons.check,color: Colors.green,);
  Icon wrong = Icon(Icons.clear,color: Colors.red,);

  void checkAns(String cA,String sA){
    int res = cA.compareTo(sA);
    if(res==0){
      totalScore++;
      correctAns++;
      correctScorePer= (correctAns/10 )*100;
      correctAnsPer = (correctAns/10);
      ques.iconList.add(right);
    }else{
      wrongAns++;
      wrongScorePer = (wrongAns/10)*100;
      wrongAnsPer = (wrongAns/10);
      ques.iconList.add(wrong);
    }
    round++;
    changeCol(res);
  }

  Color res = Colors.white;

  void clear(){
    res = Colors.white;
    name = '';
    wrongScorePer = 0.0;
    wrongAnsPer = 0.0;
    correctScorePer = 0.0;
    correctAnsPer = 0.0;
    round = 0;
    totalScore = 0;
    correctAns = 0;
    wrongAns = 0;
  }

  void changeCol(int val){
    if(val==0){
      res = Colors.green;
    }else{
      res = Colors.red;
    }
  }
  void Alert(BuildContext context,int Cscore,int Wscore){
    var pop = AlertDialog(
      title: Text('Quiz Over!',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,fontFamily: 'Uchen'),),
      content:Text('Congrats User!\nCorrect Ans : $Cscore\nWrong Ans : $Wscore'),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              child: Text('Back'),
              onPressed: (){
                setState(() {
                  ques.clear();
                  Navigator.of(context).pop();
                });
              },
            ),
            TextButton(
              child: Text('OK'),
              onPressed: (){
                setState(() {
                  String Name = name;
                  double WrongScorePer = wrongScorePer;
                  double WrongAnsPer = wrongAnsPer;
                  double CorrectScorePer = correctScorePer;
                  double CorrectAnsPer = correctAnsPer;
                  int TotalScore = totalScore;
                  int CorrectAns = correctAns;
                  int WrongAns = wrongAns;
                  String Results = resultMaker();
                  clear();
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScoreCard(Name,lName,WrongScorePer,WrongAnsPer,CorrectScorePer,CorrectAnsPer,TotalScore,CorrectAns,WrongAns,Results)));
                });
              },
            ),
          ],
        ),
      ],
    );
    showDialog(context: context, builder: (BuildContext context)=>pop,barrierDismissible: false);
  }

  Widget button(String listName,String listChoice,Color val){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(val),
          ),
          child: text.textss('${ques.getChoice1(listChoice)}',20.0,'Uchen',Colors.black),
          onPressed: (){
            setState(() {
              checkAns('${ques.getNextQuestionAns(listName)}','${ques.getChoice1(listChoice)}');
              ques.update();
              if(round==10){
                Alert(context,correctAns,wrongAns);
              }
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Html'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            setState(() {
              clear();
              ques.clear();
              Navigator.of(context).pop();
            });
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(//questions
                  child: text.textss('${ques.getNextQuestion(lName)}',20.0,'Uchen',Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: ques.iconList,
              ),
            ),
            button(lName,listOfChoice1,res),
            button(lName,listOfChoice2,res),
            button(lName,listOfChoice3,res),
            button(lName,listOfChoice4,res),
          ],
        ),
      ),
    );
  }
}
