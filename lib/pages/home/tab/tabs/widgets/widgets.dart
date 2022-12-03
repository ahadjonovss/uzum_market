import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget sized({num h=0,num w=0}){
  return SizedBox( height: h.toDouble(),width: w.toDouble(),);
}

Widget text(dynamic text,{int fontsize=17,FontWeight fontweight=FontWeight.w400,Color clr=Colors.black}){
  return Text(text.toString(),style: TextStyle(
    fontSize: fontsize.toDouble(),
    fontWeight: fontweight,
    color: clr,
  ),);
}