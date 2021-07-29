import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Texts{
  Widget texts(String text,double size,String family,Color value){
    return Text(
      '$text',style: TextStyle(
      fontSize: size,
      fontFamily: '$family',
      fontWeight: FontWeight.bold,
      color: value,
    ),
    );
  }

  Widget info(String titles,String details){
    return ListTile(
      title: Text('$titles',style: TextStyle(fontSize: 12.0,fontFamily: 'Uchen',fontWeight: FontWeight.bold),),
      subtitle: Text('$details'),
    );
  }

  Widget textss(String text,double size,String family,Color value){
    return Text(
      '$text',textAlign: TextAlign.center,
      style: TextStyle(
      fontSize: size,
      fontFamily: '$family',
      fontWeight: FontWeight.bold,
      color: value,
    ),
    );
  }
}