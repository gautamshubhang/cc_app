import 'package:flutter/material.dart';
import 'main.dart';

List<Widget> grid(){
  List<Widget> lt = [];
  var a = ln.length;
  while (a>=1){
    lt.add(fl(title: (ln.elementAt(a-1)).elementAt(0), answer: (ln.elementAt(a-1)).elementAt(1), no: a,),);
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
              IconButton(onPressed: (){ln.removeAt(no-1);runApp(MaterialApp(home: MyApp(),));}, icon: Icon(Icons.delete,size: 20, ))
            ],
          )
        ],
      ),
    );
  }
}
