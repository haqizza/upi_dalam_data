import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class infoFakultas extends StatelessWidget {
  const infoFakultas ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Center(
      child: ListView(padding: EdgeInsets.all(20), shrinkWrap: true, children: [
        InkWell(
          child: Container(
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child : Text("FPMIPA"),
          ),
          onTap: () {
            //gunakan navigator untuk panggil RincianFakultas
          },
        ),
        
        //InkWelll(
          Container(
            
              decoration: BoxDecoration(border: Border.all()),
              padding: EdgeInsets.all(14),
              child: Text("FPIPS")  
          ),
          //onTap: (){
            
          //},
        // ),
          
          
        Container(
          
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: Text("FPBS")  
          ),
        Container(
          
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: Text("FPEB")  
          ),
        Container(
          
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: Text("FPOK")  
          ),
          Container(
          
            decoration: BoxDecoration(border: Border.all()),
            padding: EdgeInsets.all(14),
            child: Text("FPIPS")  
          ),
      ]),
    );
    
  } 
}