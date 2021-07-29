import 'package:flutter/material.dart';
import 'Texts.dart';
import 'package:url_launcher/url_launcher.dart';
class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  _InfoPageState createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
   final nu = '+916201374668';
  Texts text = new Texts();

  Widget devInfo(BuildContext context){
    String no = '+91 6201374668';
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            color: Colors.black,
            child: Center(child: Text('Developer Details',style: TextStyle(fontSize: 20.0,fontFamily: 'Uchen',fontWeight: FontWeight.bold,color: Colors.white),)),
          ),
        ),
        SizedBox(height: 30.0,),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 260.0,
            width: 360.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(child: text.texts('Professional Details',20.0,'Uchen',Colors.black),),
                SizedBox(child: Divider(height: 5.0,color: Colors.black,),),
                Center(
                  child: CircleAvatar(
                    radius: 30.0,
                    child: Image(image: AssetImage('Images/dpRitik.png'),),
                  ),
                ),
                text.texts('Name : Ritik Bhushan Yadav',15.0,'Uchen',Colors.black),
                text.texts('Contact : $no',15.0,'Uchen',Colors.black),
                text.texts('Email : ritikbhushanyadav@gmail.com',15.0,'Uchen',Colors.black),
                text.texts('Github : https://github.com/CodexRitik',15.0,'Uchen',Colors.black),
                text.texts('Website : https://www.codexritik.site',15.0,'Uchen',Colors.black),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              child: Row(
                children: [
                  Icon(Icons.add_call),
                  Text(' Call Me'),
                ],
              ),
              onPressed: () async {
                launch('tel://$nu');
              },
            ),
            ElevatedButton(
              child: Row(
                children: [
                  Icon(Icons.email),
                  Text(' Email'),
                ],
              ),
              onPressed: () async{
                launch('mailto: ritikbhushanyadav@gmail.com');
              },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              child: Row(
                children: [
                  Icon(Icons.account_circle_rounded),
                  Text('Github'),
                ],
              ),
              onPressed: () async{
                launch('https://github.com/CodexRitik');
              },
            ),
            ElevatedButton(
              child: Row(
                children: [
                  Icon(Icons.search),
                  Text('Website'),
                ],
              ),
              onPressed: () async{
                launch('https://www.codexritik.site');
              },
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Application Details'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              setState(() {
                Navigator.of(context).pop();
              });
            },
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info_outline),text: 'Contact Me!',),
              Tab(icon: Icon(Icons.announcement_rounded),text: 'About!',)
            ],
          )
        ),
        body: TabBarView(
          children: [
            devInfo(context),
            appInfo(context)
          ],
        ),
      ),
    );
  }
}

Texts tex = new Texts();
Widget appInfo(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.black,
    body : Column(
      children: <Widget>[
        Expanded(
          child : Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ListView(
                children: [
                  Center(child:tex.texts('Know More!',30.0,'Uchen',Colors.black)),
                  ListTile(
                    title: tex.texts('1. About this App', 18.0, 'Uchen', Colors.black),
                    subtitle: Text('This is a basic quizz app.There is 10 subjects available for give a quiz test.You may Also Create Your Own Quiz questions and set Answers.there is available subjects'
                        'Like C programming , java, general knowledge ,Math etc.This is an educational purposes application. It has only educational content so age restriction is not required.'),
                  ),
                  ListTile(
                    title: tex.texts('2. Score Rules', 18.0, 'Uchen', Colors.black),
                    subtitle: Text('There is simple Scoring logic , if you give a correct answer then your score will increase with +1 marks otherwise your score will same As previous.'),
                  ),
                  ListTile(
                    title: tex.texts('2. Note', 18.0, 'Uchen', Colors.black),
                    subtitle: Text('This app  do not asks with your any permission and does not collect any information . So you may feel free with this reasons.If you face any issue regarding this'
                        ' then you may directly contact us at given contact details.'),
                  ),
                  SizedBox(height: 35.0,),
                  Center(child: tex.texts('Thank You!',30.0,'Niconne',Colors.red),)
                ],
              )
            ),
          ),
        ),
      ],
    ),
  );
}