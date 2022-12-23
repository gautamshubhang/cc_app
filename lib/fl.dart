import 'package:flutter/material.dart';
import 'main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List<Widget> grid(){
  List<Widget> lt = [];
  var a = ln.length;
  while (a>=1){
    lt.add(fl(title: ln[a-1].question, answer: ln[a-1].answer, no: a,),);
    a = a - 1;
  }
  return lt;
}

class fl extends StatelessWidget {
  final String title;
  final String answer;
  final int no;
  const fl({Key? key, required this.title, required this.answer, required this.no}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        color: Colors.purple,
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(title,style: TextStyle(fontSize: 20),),
          Text(answer,style: TextStyle(fontSize: 15),),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: (){final dq = FirebaseFirestore.instance.collection('question').doc(title);
                dq.delete();
                readquestions();}, icon: Icon(Icons.delete,size: 20, ))
            ],
          )
        ],
      ),
    );
  }
}
