import 'dart:async';
import 'package:cc_app/splash.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'dart:math';
import 'fl.dart';
import 'flcard.dart';
import 'data.dart';
import 'package:firebase_core/firebase_core.dart';
List<Welcome> ln = [];

List ln1 = [["Capital of India","Delhi"],
  ["Capital of USA","Washington DC"],
  ["Capital of Russia","Moscow"],
  ["Capital of Sri Lanka","Colombo"],
  ["Capital of Pakistan","Islamabad"],
  ["Capital of Bangladesh","Dhaka"],
  ["Capital of Nepal","Kathmandu"],
  ["Capital of China","Beijing"]];



Future createquestion(String question, String answer) async {
  final docq = FirebaseFirestore.instance.collection('question');
  final json = {
    "question" : question,
    'answer' : answer,
  };
  await docq.doc(question).set(json);
}
Future readquestions() async{
  var rec = await FirebaseFirestore.instance.collection('question').get();
  maprecord(rec);
}

maprecord(QuerySnapshot<Map<String, dynamic>> rec){
  var list = rec.docs.map((ques) => Welcome(question: ques['question'], answer: ques['answer'])).toList();
  ln = list;
  runApp(MaterialApp(
    home: MyApp(),
  ));
}



Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: splash(),
  ));
}


void practice() {
  var i = Random().nextInt(ln.length);
  var j = i+1;
  runApp(MaterialApp(
    home: flcard(title: ln[i].question, answer: ln[i].answer, nu:"$j"),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late StreamSubscription subscription;
  var isdeviceconnected = false;
  bool isalertset = false;

  @override
  void initState(){
    getConnectivity();
    super.initState();
  }

  getConnectivity() =>
      subscription = Connectivity().onConnectivityChanged.listen(
          (ConnectivityResult result) async{
            isdeviceconnected = await InternetConnectionChecker().hasConnection;
            if (!isdeviceconnected && isalertset == false) {
              showDialogBox();
              setState(() => isalertset = true);
            }
          },
      );

  @override
  void dispose(){
    subscription.cancel();
    super.dispose();
  }


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
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
        children: grid(),
      ),
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          children: [
            Expanded(child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purple)),
              onPressed: null,
              child: Text('CARDS'),
            )),
            Expanded(child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purple)),
              onPressed: (){practice();},
              child: Text('PRACTICE'),
            )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){runApp(MaterialApp(home: addpage(),));},
        backgroundColor: Colors.purple,
        child: Icon(Icons.add),
      ),
    );
  }

  showDialogBox() => showCupertinoDialog<String>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: const Text("No Connection!"),
      content: const Text("Please check your internet connection."),
      actions: <Widget>[
        TextButton(onPressed: () async{
          Navigator.pop(context,'Cancel');
          setState(() => isalertset = false);
          isdeviceconnected = await InternetConnectionChecker().hasConnection;
          if (!isdeviceconnected) {
            showDialogBox();
            setState(() => isalertset = true);
          }
        }, child: Text("OK")),
      ],
    ),
  );
}

class addpage extends StatelessWidget {
  addpage({Key? key}) : super(key: key);
  final question = TextEditingController();
  final answer = TextEditingController();

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
        children: [
          TextField(
            controller: question,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter the question',
            ),
          ),
          Container(height: 30,),
          TextField(
            controller: answer,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter the answer',
            ),
          ),
          Container(height: 30,),
          ElevatedButton(onPressed: (){createquestion(question.text, answer.text);readquestions();}, child: Text("SUBMIT"),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.purple)),)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {runApp(MaterialApp(home: MyApp(),));},
        child: Icon(Icons.arrow_back),
        backgroundColor: Colors.purple,
      ),

    );
  }
}




