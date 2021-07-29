import 'package:flutter/material.dart';

import 'QuesScreen.dart';

class QuestionBank{

  int _quesNumber = 0;
  int _quesAnsNum = 0;

  void clear(){
    _quesNumber = 0;
    _quesAnsNum = 0;
    iconList.clear();
  }
  List<Icon> iconList = [];
  List<QuesScreen> CquesList = [QuesScreen('Which of the following is not a valid variable name declaration?','None of the mentioned'),
    QuesScreen('All keywords in C are in _____', 'LowerCase letters'),
    QuesScreen('The format identifier ‘%i’ is also used for _____ data type.','int'),
    QuesScreen('What is the size of an int data type?','Depends on the system/compiler'),
    QuesScreen('Which of the data types has the size that is variable?','struct'),
    QuesScreen('Which of the following data type will throw an error on modulus operation(%)?','float'),
    QuesScreen('When double is converted to float, then the value is?','Depends on the compiler'),
    QuesScreen('Which operators of the following have same precedence?','Q and R'),
    QuesScreen('Which of the following operator has the highest precedence in the following?','()'),
    QuesScreen('Relational operators cannot be used on ____', 'structure'),
  ];

  List<String> list1 = ['int __a3','LowerCase letters','char','4 Bytes','int','char','Truncated','P and Q','()','structure'];
  List<String> list2 = ['int __3a','UpperCase letters','int','8 Bytes','struct','short','Rounded','Q and R','sizeof','long'];
  List<String> list3 = ['int __A3','CamelCase letters','float','Depends on the system/compiler','float','int','Depends on the compiler','P and R','*','strings'];
  List<String> list4 = ['None of the mentioned','None of these','double','Cannot be determined','double','float','Depends on the standard','P, Q and R','+','float'];


  String getElement(int index,String n){
    String res = '';
    if(n.compareTo('CquesList')==0){
      res = '${CquesList[index].Questions}';
    }
    else if(n.compareTo('chemList')==0){
      res = '${chemList[index].Questions}';
    }
    else if(n.compareTo('engList')==0){
      res = '${engList[index].Questions}';
    }
    else if(n.compareTo('gkList')==0){
      res = '${gkList[index].Questions}';
    }
    else if(n.compareTo('htmlList')==0){
      res = '${htmlList[index].Questions}';
    }
    else if(n.compareTo('javaList')==0){
      res = '${javaList[index].Questions}';
    }
    else if(n.compareTo('jsList')==0){
      res = '${jsList[index].Questions}';
    }
    else if(n.compareTo('mathList')==0){
      res = '${mathList[index].Questions}';
    }
    else if(n.compareTo('physicsList')==0){
      res = '${physicsList[index].Questions}';
    }
    else if(n.compareTo('pythonList')==0){
      res = '${pythonList[index].Questions}';
    }
    return res;
  }

  String getAnsElement(int index,String n){
    String res = '';
    if(n.compareTo('CquesList')==0){
      res = '${CquesList[index].QuestionCorrAns}';
    }
    else if(n.compareTo('chemList')==0){
      res = '${chemList[index].QuestionCorrAns}';
    }
    else if(n.compareTo('engList')==0){
      res = '${engList[index].QuestionCorrAns}';
    }
    else if(n.compareTo('gkList')==0){
      res = '${gkList[index].QuestionCorrAns}';
    }
    else if(n.compareTo('htmlList')==0){
      res = '${htmlList[index].QuestionCorrAns}';
    }
    else if(n.compareTo('javaList')==0){
      res = '${javaList[index].QuestionCorrAns}';
    }
    else if(n.compareTo('jsList')==0){
      res = '${jsList[index].QuestionCorrAns}';
    }
    else if(n.compareTo('mathList')==0){
      res = '${mathList[index].QuestionCorrAns}';
    }
    else if(n.compareTo('physicsList')==0){
      res = '${physicsList[index].QuestionCorrAns}';
    }
    else if(n.compareTo('pythonList')==0){
      res = '${pythonList[index].QuestionCorrAns}';
    }
    return res;
  }

  String getNextQuestion(String listName){
    String res = '';
    if(listName.compareTo('CquesList')==0){
      res = '${CquesList[_quesNumber].Questions}';
    }
    else if(listName.compareTo('chemList')==0){
      res = '${chemList[_quesNumber].Questions}';
    }
    else if(listName.compareTo('engList')==0){
      res = '${engList[_quesNumber].Questions}';
    }
    else if(listName.compareTo('gkList')==0){
      res = '${gkList[_quesNumber].Questions}';
    }
    else if(listName.compareTo('htmlList')==0){
      res = '${htmlList[_quesNumber].Questions}';
    }
    else if(listName.compareTo('javaList')==0){
      res = '${javaList[_quesNumber].Questions}';
    }
    else if(listName.compareTo('jsList')==0){
      res = '${jsList[_quesNumber].Questions}';
    }
    else if(listName.compareTo('mathList')==0){
      res = '${mathList[_quesNumber].Questions}';
    }
    else if(listName.compareTo('physicsList')==0){
      res = '${physicsList[_quesNumber].Questions}';
    }
    else if(listName.compareTo('pythonList')==0){
      res = '${pythonList[_quesNumber].Questions}';
    }
    return res;
  }

  String getNextQuestionAns(String listName){
    String res = '';
    if(listName.compareTo('CquesList')==0){
      res = '${CquesList[_quesNumber].QuestionCorrAns}';
    }
    else if(listName.compareTo('chemList')==0){
      res = '${chemList[_quesNumber].QuestionCorrAns}';
    }
    else if(listName.compareTo('engList')==0){
      res = '${engList[_quesNumber].QuestionCorrAns}';
    }
    else if(listName.compareTo('gkList')==0){
      res = '${gkList[_quesNumber].QuestionCorrAns}';
    }
    else if(listName.compareTo('htmlList')==0){
      res = '${htmlList[_quesNumber].QuestionCorrAns}';
    }
    else if(listName.compareTo('javaList')==0){
      res = '${javaList[_quesNumber].QuestionCorrAns}';
    }
    else if(listName.compareTo('jsList')==0){
      res = '${jsList[_quesNumber].QuestionCorrAns}';
    }
    else if(listName.compareTo('mathList')==0){
      res = '${mathList[_quesNumber].QuestionCorrAns}';
    }
    else if(listName.compareTo('physicsList')==0){
      res = '${physicsList[_quesNumber].QuestionCorrAns}';
    }
    else if(listName.compareTo('pythonList')==0){
      res = '${pythonList[_quesNumber].QuestionCorrAns}';
    }
    return res;
  }
  String getChoice1(String listName){
    String res = '';
    if(listName.compareTo('list1')==0){
      res = list1[_quesNumber];
    }
    else if(listName.compareTo('chemList1')==0){
      res = chemList1[_quesNumber];
    }
    else if(listName.compareTo('list2')==0){
      res = list2[_quesNumber];
    }
    else if(listName.compareTo('chemList2')==0){
      res = chemList2[_quesNumber];
    }
    else if(listName.compareTo('list3')==0){
      res = list3[_quesNumber];
    }
    else if(listName.compareTo('chemList3')==0){
      res = chemList3[_quesNumber];
    }
    else if(listName.compareTo('list4')==0){
      res = list4[_quesNumber];
    }
    else if(listName.compareTo('chemList4')==0){
      res = chemList4[_quesNumber];
    }
    else if(listName.compareTo('engList1')==0){
      res = engList1[_quesNumber];
    }
    else if(listName.compareTo('engList2')==0){
      res = engList2[_quesNumber];
    }
    else if(listName.compareTo('engList3')==0){
      res = engList3[_quesNumber];
    }
    else if(listName.compareTo('engList4')==0){
      res = engList4[_quesNumber];
    }
    else if(listName.compareTo('gkList1')==0){
      res = gkList1[_quesNumber];
    }
    else if(listName.compareTo('gkList2')==0){
      res = gkList2[_quesNumber];
    }
    else if(listName.compareTo('gkList3')==0){
      res = gkList3[_quesNumber];
    }
    else if(listName.compareTo('gkList4')==0){
      res = gkList4[_quesNumber];
    }
    else if(listName.compareTo('htmlList1')==0){
      res = htmlList1[_quesNumber];
    }
    else if(listName.compareTo('htmlList2')==0){
      res = htmlList2[_quesNumber];
    }
    else if(listName.compareTo('htmlList3')==0){
      res = htmlList3[_quesNumber];
    }
    else if(listName.compareTo('htmlList4')==0){
      res = htmlList4[_quesNumber];
    }
    else if(listName.compareTo('javaList1')==0){
      res = javaList1[_quesNumber];
    }
    else if(listName.compareTo('javaList2')==0){
      res = javaList2[_quesNumber];
    }
    else if(listName.compareTo('javaList3')==0){
      res = javaList3[_quesNumber];
    }
    else if(listName.compareTo('javaList4')==0){
      res = javaList4[_quesNumber];
    }
    else if(listName.compareTo('jsList1')==0){
      res = jsList1[_quesNumber];
    }
    else if(listName.compareTo('jsList2')==0){
      res = jsList2[_quesNumber];
    }
    else if(listName.compareTo('jsList3')==0){
      res = jsList3[_quesNumber];
    }
    else if(listName.compareTo('jsList4')==0){
      res = jsList4[_quesNumber];
    }
    else if(listName.compareTo('mathList1')==0){
      res = mathList1[_quesNumber];
    }
    else if(listName.compareTo('mathList2')==0){
      res = mathList2[_quesNumber];
    }
    else if(listName.compareTo('mathList3')==0){
      res = mathList3[_quesNumber];
    }
    else if(listName.compareTo('mathList4')==0){
      res = mathList4[_quesNumber];
    }
    else if(listName.compareTo('physicsList1')==0){
      res = physicsList1[_quesNumber];
    }
    else if(listName.compareTo('physicsList2')==0){
      res = physicsList2[_quesNumber];
    }
    else if(listName.compareTo('physicsList3')==0){
      res = physicsList3[_quesNumber];
    }
    else if(listName.compareTo('physicsList4')==0){
      res = physicsList4[_quesNumber];
    }
    else if(listName.compareTo('pythonList1')==0){
      res = pythonList1[_quesNumber];
    }
    else if(listName.compareTo('pythonList2')==0){
      res = pythonList2[_quesNumber];
    }
    else if(listName.compareTo('pythonList3')==0){
      res = pythonList3[_quesNumber];
    }
    else if(listName.compareTo('pythonList4')==0){
      res = pythonList4[_quesNumber];
    }
    return res;
  }
  void update(){
    if(_quesNumber<CquesList.length){
      _quesAnsNum++;
    }
    getNum(_quesAnsNum);
   }
   void getNum(int num){
    if(num<10){
      _quesNumber = num;
    }
  }


   List<QuesScreen> chemList = [
     QuesScreen('Presence of which among the following minerals in Banana makes them slightly radioactive?','Pottasium'),
     QuesScreen('Dalton’s name is associated with which of the following terms?','Atom'),
     QuesScreen('Which among the following element is an essential constituent of acids? ','Hydrogen'),
     QuesScreen('Which among the following would cause the bright red color due to bursting of crackers?','Strontium'),
     QuesScreen('Which among the following is called Laughing Gas popularly?','Nitrous oxide'),
     QuesScreen('White Phosphorous is represented by which among the following symbols?','P4'),
     QuesScreen('“Atoms can neither be created nor destroyed.” This principle was given by __?','Dalton'),
     QuesScreen('The aqueous solution of which among the following acids is called Vinegar? ','Acetic acid'),
     QuesScreen('What is the common name of analgesic and antipyretic drug acetylsalicylic acid?','Aspirin'),
     QuesScreen('Which among the following is known as White Vitriol?','Zinc Sulphate'),
   ];
  List<String> chemList1 = ['Sodium','Electron','Nitrogen','Strontium','Nitric oxide','P1','Avogadro','Oxalic acid','Paracetamol','Zinc Sulphate'];
  List<String> chemList2 = ['Calcium','Proton','Hydrogen','Sodium','Nitrous oxide','P2','Dalton','Citric acid','Aspirin','Zinc Chloride'];
  List<String> chemList3 = ['Magnesium','Atom','Oxygen','Sulphur','Nitrogen penta oxide','P3','Rutherford','Acetic acid','Wintergreen','Zinc Phosphate'];
  List<String> chemList4 = ['Pottasium','Neutron','Helium','Magnesium','Nitrogen','P4','Niels Bohr','Hydrochloric acid','Trazodone','Zinc oxide'];

  List<QuesScreen> engList =[
    QuesScreen('You ____ better see a doctor.','had'),
    QuesScreen('She ____ me to go to school.','from'),
    QuesScreen('____ the better team, we lost the match.','Despite being'),
    QuesScreen('It ______ my brother.','is ages since I saw'),
    QuesScreen('He\'s interested ______ learning Spanish','in'),
    QuesScreen('By this time next year, I ______ all my exams.','will have taken'),
    QuesScreen('They have put speed bumps on the road to ______ accidents.','prevent'),
    QuesScreen('I want to be a teacher when I ______.','grow up'),
    QuesScreen('His office is on the second ______ of the building.','floor'),
    QuesScreen('____ to school yesterday?','Did you walk'),
  ];
  List<String> engList1 = ['did','from','Despite of being','is ages that I did see','on','will have taken','avoid','grow','floor','Do you walk'];
  List<String> engList2 = ['would','at','Despite','is ages since I saw','in','will take','prohibit','age','level','Did you walked'];
  List<String> engList3 = ['should','to','Despite being','was ages that I have seen','to','take','prevent','grow up','ground','Did you walk'];
  List<String> engList4 = ['had','beyond','Although','was ages since I saw','for','have taken','forbid','am more years','stage','Have you walked'];

  List<QuesScreen> gkList =[
    QuesScreen('Which of the following personalities gave ‘The Laws of Heredity’?','G.J. Mendel'),
    QuesScreen('Name the person who was also known as Deshbandhu.','Chittaranjan Das'),
    QuesScreen('The capital of Uttarakhand is…. ','Dehra Dun'),
    QuesScreen('Geet Govind is a famous creation of ……','Jayadev'),
    QuesScreen('World Trade Organization came into existence in…','1995'),
    QuesScreen('Panchayati Raj comes under….','State list'),
    QuesScreen('When did the war of Americans Independence take place?','1776'),
    QuesScreen('Panini was……','a Sanskrit grammarian of Vedic times'),
    QuesScreen('Mein Kampf is authored by…','Adolf Hitler'),
    QuesScreen('Which of the following is the largest and the deepest ocean of the world?','Pacific'),
  ];
  List<String> gkList1 = ['Robert Hook ','S. Radhakrishnan','Masoorie','Bana Bhatt','1992','Residual list','1770','a Greek philosopher','Napoleon Bonaparte','Arctic'];
  List<String> gkList2 = ['G.J. Mendel','G.K. Gokhale','Dehra Dun','Kalidas','1993','Concurrent list','1772','an Indian astronomer & mathematician','Karl Marx','Atlantic'];
  List<String> gkList3 = ['Charles Darwin','Chittaranjan Das','Nainital','Jayadev','1994','State list','1774','a Sanskrit grammarian of Vedic times','Adolf Hitler','Pacific'];
  List<String> gkList4 = ['William Harvey','Madan Mohan Malviya','None of these','Bharat Muni','1995','Union list','1776',' great poet of ancient times.','Benito Mussolini','Indian'];

  List<QuesScreen> htmlList = [
    QuesScreen('HTML stands for -', 'HyperText Markup Language'),
    QuesScreen('Which of the following element is responsible for making the text bold in HTML?', '<b>'),
    QuesScreen('Which of the following tag is used for inserting the largest heading in HTML?', '<h1>'),
    QuesScreen('Which of the following tag is used to insert a line-break in HTML?', '<br>'),
    QuesScreen('How to create an unordered list (a list with the list items in bullets) in HTML?', '<ul>'),
    QuesScreen('<input> is -', 'an empty tag'),
    QuesScreen('The <hr> tag in HTML is used for -', 'horizontal ruler'),
    QuesScreen('Which of the following attribute is used to provide a unique name to an element?', 'id'),
    QuesScreen('Which of the following HTML tag is used to display the text with scrolling effect?', '<marquee>'),
    QuesScreen('Which of the following HTML tag is the special formatting tag?', '<pre>'),
  ];

  List<String> htmlList1 = ['HighText Machine Language','<pre>','<h6>','<br>','<ul>','a format tag','new line','class','<marquee>','<p>'];
  List<String> htmlList2 = ['HyperText and links','<a>','<h2>','<b>','<ol>','an empty tag','vertical ruler','id','<scroll>','<pre>'];
  List<String> htmlList3 = ['HyperText Markup Language','<b>','<h1>','<pre>','<li>','All of the above','new paragraph','type','<div>','<b>'];
  List<String> htmlList4 = ['None Of These!','<br>','<h4>','<a>','<i>','None of the above','horizontal ruler','None','<None>','None'];

  List<QuesScreen> javaList = [
    QuesScreen('What guarantees type-safety in a collection?', 'Generics'),
    QuesScreen('HashSet internally uses?', 'Set'),
    QuesScreen('The most used interfaces from the collection framework are?','Map'),
    QuesScreen('The root interface of Java collection framework hierarchy is –', 'List/Set'),
    QuesScreen('Which of those is synchronized?', 'Vector'),
    QuesScreen('ArrayList implements that of the following?', 'All of these'),
    QuesScreen('Which of those permits the storage of the many null values?', 'All of these'),
    QuesScreen('nextIndex() and previousIndex() are methods of which interface?', 'Iterator'),
    QuesScreen('Vector extends that of these?', 'AbstractList'),
    QuesScreen('LinkedList implements?', 'Both of above'),
  ];

  List<String> javaList1 = ['Generics','HashMap','List',' Collection','ArrayList','List','Set','IndexIterator','ArrayList','Deque'];
  List<String> javaList2 = ['Abstract classes','List','Map','Root','LinkedList','RandomAccess','List','Iterator','LinkedList','List'];
  List<String> javaList3 = ['Interfaces','Set','None','Collections','Vector','Cloneable','All of these','ListIterator','AbstractList','None'];
  List<String> javaList4 = ['Collection','Collection','Set','List/Set','None','All of these','Relax! Think Again','NextPreviousIterator','None','Both of above'];

  List<QuesScreen> jsList = [
    QuesScreen('__ JavaScript is also called client-side JavaScript.', 'Navigator'),
    QuesScreen('______ JavaScript is also called server-side JavaScript.', 'LiveWire'),
    QuesScreen('Which of the following are capabilities of functions in JavaScript?', 'Accept parameters'),
    QuesScreen('Which of the following is not a valid JavaScript variable name?', '2names'),
    QuesScreen('Which of the following attribute can hold the JavaScript version?', 'LANGUAGE'),
    QuesScreen('JavaScript entities start with ____ and end with ____.', 'Ampersand, semicolon'),
    QuesScreen('Which of the following is not considered a JavaScript operator?', 'this'),
    QuesScreen('JavaScript is interpreted by _____', 'Client'),
    QuesScreen('Using _____ statement is how you test for a specific condition.', 'If'),
    QuesScreen('________ is the tainted property of a window object.', 'Defaultstatus'),
  ];

  List<String> jsList1 = ['Microsoft','Microsoft','Return a value','2names','LANGUAGE','Semicolon, colon','new','Client','Select','Pathname'];
  List<String> jsList2 = ['Navigator','LiveWire','Accept parameters and Return a value',' _first_and_last_names','SCRIPT','Semicolon, Ampersand','this','Server','If','Protocol'];
  List<String> jsList3 = ['LiveWire','Native','Accept parameters','FirstAndLast','VERSION','Ampersand, colon','delete','Object','Switch','Defaultstatus'];
  List<String> jsList4 = ['Native','Navigator','None','None Of The Above','None of the above','Ampersand, semicolon','typeof','None','For','Host'];

  List<QuesScreen> mathList = [
    QuesScreen('I am an odd number. Take away one letter and I become even. What number am I?', 'Seven'),
    QuesScreen('Which of these numbers is lower: -6 -12 -8 or -4?', '-12'),
    QuesScreen('Round 3.57896 so that there is one number after the decimal point', '3.6'),
    QuesScreen('A dress costs £35. How much could be saved with a voucher for 10% off?', '£3.50'),
    QuesScreen('Gary earns £7.50 per hour. How much will Gary earn in 7.5 hours?', '£56.25'),
    QuesScreen('How many centimeters are in 1 meter?', '100'),
    QuesScreen('A rectangle has a length of 14cm and a width of 3cm. What is the area of the rectangle?', '42 cm2'),
    QuesScreen('Calculate the volume of a cuboid with a length of 4cm, the width of 3cm and a height of 2cm.', '24 cm3'),
    QuesScreen('A film starts at 7:15 pm and finishes at 9:30 pm. How long is the film?', '2 hours 15 mins'),
    QuesScreen('Work out the mean of the following set of data: 8, 12, 6, 15, 13, 5, 7, 10', '9.5'),
  ];

  List<String> mathList1 = ['Six','-6','3.5','£3','£56.25','10','17 cm2','9 cm3','2 hours 15 mins','10.5'];
  List<String> mathList2 = ['Seven','-8','3.58','£3.75','£15','100','34 cm2','14 cm3','1 hour 15 mins','12'];
  List<String> mathList3 = ['Undefined','-4','3.6','£3.50','£49.50','1000','28 cm2','24 cm3','2 hours 25 mins','8.5'];
  List<String> mathList4 = ['Invalid','-12','3.57','£1.50','£35','10000','42 cm2','16 cm3','1 hour 30 mins','9.5'];

  List<QuesScreen> physicsList = [
    QuesScreen('How many internal reflections of ligh take place in the formation of primary rainbow?', '1'),
    QuesScreen('A non-spherical shining spoon can generally be considered as a -', 'Parabolic mirror'),
    QuesScreen('Which one of the following is an electric conductor?', 'Human body'),
    QuesScreen('The best evidence for the existence and movement of particles in liquids was given by -', 'Robert Brown'),
    QuesScreen('Which of the following is the best conductor of electricity?', 'Silver metal'),
    QuesScreen(' Aluminium is manufactured from -', 'Bauxite ore'),
    QuesScreen('The best malleable metal is -', 'Gold'),
    QuesScreen('The early attempt to classify elements as metals and non-metals was made by -', 'Lavoisier'),
    QuesScreen('The magnet is strongest near the -', 'Ends of the magnet'),
    QuesScreen('Which is the device used to detect and measure small electric current in a circuit?', 'Galvanometer'),
  ];

  List<String> physicsList1 = ['2','Spherical mirror','A plastic sheet','John Dalton','Copper metal','Copper ore','Aluminum','Mendeleev','Poles of the magnet','Tansformer'];
  List<String> physicsList2 = ['0','Parabolic mirror','Distilled water','Ernest Rutherford','Aluminium metal','Bauxite ore','Silver','Lother Meyer','Ends of the magnet','Galvanometer'];
  List<String> physicsList3 = ['1','Plane mirror','Human body','J. J. Thomson','Silver metal','Mica ore','Gold','Lavoisier','Centre of the magnet','Thermometer'];
  List<String> physicsList4 = ['More then 2','Lens','A wooden thin sheet','Robert Brown','Iron metal','Manganese ore','Lead','Henry Moseley','the poles of the magnet','Electromagnetic Induction'];

  List<QuesScreen> pythonList = [
    QuesScreen('Which is the correct operator for power(xy)?', 'X**y'),
    QuesScreen('Mathematical operations can be performed on a string', 'False'),
    QuesScreen('Operators with the same precedence are evaluated in which manner?', 'Left to Right'),
    QuesScreen('Which one of the following has the highest precedence in the expression?', 'Parentheses'),
    QuesScreen('What will be the output of the following Python statement? >>>"a"+"bc"', 'abc'),
    QuesScreen('What will be the output of the following Python statement? >>>"abcd"[2:]', 'cd'),
    QuesScreen('What will be the output of the following Python statement?  >>>print(\'new\' \'line\')', 'newline'),
    QuesScreen('Count output of the following Python code? print("xyyzxyzxzxyy".count(\'yy\', 1))', '2'),
    QuesScreen('Count the output of the following Python code?\nprint("xyyzxyzxzxyy".count(\'xyy\', 0, 100))', '2'),
    QuesScreen('Find the output of the following Python code?  print(\'abc\'.encode())', 'b’abc’'),
  ];

  List<String> pythonList1 = ['X^y','True','Left to Right','Exponential','a','a','Error','2','1','abc'];
  List<String> pythonList2 = ['X**y','False','Right to Left','Addition','bc','ab','Output equivalent to print ‘new\nline’','0','2','‘abc’'];
  List<String> pythonList3 = ['X^^y','Confused?','Can’t say','Multiplication','bca','cd','newline','1','3','b’abc’'];
  List<String> pythonList4 = ['None','None','None','Parentheses','abc','dc','new line','None','12','h’abc’'];
}
