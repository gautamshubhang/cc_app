import 'package:flutter/material.dart';
import 'main.dart';

class flcard extends StatefulWidget {
  final String title;
  final String answer;
  final String nu;
  flcard({Key? key, required this.title, required this.answer, required this.nu}) : super(key: key);

  @override
  State<flcard> createState() => _flcardState();
}

class _flcardState extends State<flcard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("FLASHCARD",
          style: TextStyle(
            fontFamily: 'Gloria',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 450,
            width: 375,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Card #"+widget.nu,style: TextStyle(fontSize: 20),),
                  Spacer(),
                  Text(widget.title,style: TextStyle(fontSize: 60),),
                  Spacer(),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){runApp(MaterialApp(home: flanswer(title: widget.title, answer: widget.answer, nu: widget.nu),));}, child: Text("Show Answer"),),
              FloatingActionButton(onPressed: (){practice();},child: Icon(Icons.navigate_next),)
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          children: [
            Expanded(child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purple)),
              onPressed: (){readquestions();},
              child: Text('CARDS'),
            )),
            Expanded(child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purple)),
              onPressed: null,
              child: Text('PRACTICE'),
            )),
          ],
        ),
      ),
    );
  }
}

class flanswer extends StatelessWidget {
  final String title;
  final String answer;
  final String nu;
  const flanswer({Key? key, required this.title, required this.answer, required this.nu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("FLASHCARD",
          style: TextStyle(
            fontFamily: 'Gloria',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 450,
            width: 375,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(30.0))
              ),
              child: Column(
                children: [
                  Text("Card #"+nu,style: TextStyle(fontSize: 20),),
                  Spacer(),
                  Text(title,style: TextStyle(fontSize: 60),),
                  Spacer(),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(answer,style: TextStyle(color: Colors.white,fontSize: 25),),
              FloatingActionButton(onPressed: (){practice();},child: Icon(Icons.navigate_next),)
            ],
          ),
        ],
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          children: [
            Expanded(child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purple)),
              onPressed: (){readquestions();},
              child: Text('CARDS'),
            )),
            Expanded(child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purple)),
              onPressed: null,
              child: Text('PRACTICE'),
            )),
          ],
        ),
      ),
    );
  }
}

