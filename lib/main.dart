import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizzes/Info.dart';
import 'package:quizzes/Texts.dart';

void main() => runApp(MainScreen());

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Texts textObj = new Texts();


void Alert(BuildContext context){
  String name = '';
  var popUp = AlertDialog(
    title: Text('Enter Your Name!'),
    actions: [
      Column(
          children: <Widget>[
            TextField(
              maxLength: 25,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'CodexRitik',
              ),
              onChanged: (text){
                name = text;
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  child: Text('Back'),
                  onPressed: (){
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                ),
                TextButton(
                  child: Text('Submit!'),
                  onPressed: (){
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Info(name)));
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ],
  );
  showDialog(context: context, builder: (BuildContext context)=>popUp,barrierDismissible: false);
}
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Images/mainBg.jpg'),
              fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 150.0,
            ),
            Image(image: AssetImage('Images/quizz.png'),height: 80.0,width: 80.0,),
            Center(child: textObj.texts('Quiz',60.0,'Uchen',Colors.white)),
            SizedBox(height: 400.0,),
            Padding(
              padding: const EdgeInsets.only(left: 60.0,right: 60.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
                onPressed: (){
                  setState(() {
                    Alert(context);
                    //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Info()),);
                  });
                },
                child: Text('Start',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Uchen',fontSize: 20.0),
              ),
              ),
            ),
          ],
        ),
    );
  }
}





