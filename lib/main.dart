import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
          children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  color: Colors.purple,
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Question",style: TextStyle(fontSize: 20),),
                    Text("Answer",style: TextStyle(fontSize: 20),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete,size: 20,))
                      ],
                    )
                  ],
                ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Colors.purple,
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Question",style: TextStyle(fontSize: 20),),
                  Text("Answer",style: TextStyle(fontSize: 20),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.delete,size: 20,))
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Colors.purple,
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Question",style: TextStyle(fontSize: 20),),
                  Text("Answer",style: TextStyle(fontSize: 20),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.delete,size: 20,))
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Colors.purple,
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Question",style: TextStyle(fontSize: 20),),
                  Text("Answer",style: TextStyle(fontSize: 20),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.delete,size: 20,))
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                color: Colors.purple,
              ),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Question",style: TextStyle(fontSize: 20),),
                  Text("Answer",style: TextStyle(fontSize: 20),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.delete,size: 20,))
                    ],
                  )
                ],
              ),
            ),
          ],
      ),
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.purple,
        child: Icon(Icons.add),
      ),
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
              onPressed: (){runApp(MaterialApp(home: fl1(),));},
              child: Text('PRACTICE'),
            )),
          ],
        ),
      ),
    );
  }
}

class fl1 extends StatelessWidget {
  const fl1({Key? key}) : super(key: key);

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
                  Text("Card #1",style: TextStyle(fontSize: 20),),
                  Spacer(),
                  Text("Title",style: TextStyle(fontSize: 60),),
                  Spacer(),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Show Answer"),),
              FloatingActionButton(onPressed: (){runApp(MaterialApp(home: fl2(),));},child: Icon(Icons.navigate_next),)
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
              onPressed: (){runApp(MaterialApp(home: MyApp(),));},
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

class fl2 extends StatelessWidget {
  const fl2({Key? key}) : super(key: key);

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
                  Text("Card #2",style: TextStyle(fontSize: 20),),
                  Spacer(),
                  Text("Title",style: TextStyle(fontSize: 60),),
                  Spacer(),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Show Answer"),),
              FloatingActionButton(onPressed: (){runApp(MaterialApp(home: fl3(),));},child: Icon(Icons.navigate_next),)
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
              onPressed: (){runApp(MaterialApp(home: MyApp(),));},
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

class fl3 extends StatelessWidget {
  const fl3({Key? key}) : super(key: key);

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
                  Text("Card #3",style: TextStyle(fontSize: 20),),
                  Spacer(),
                  Text("Title",style: TextStyle(fontSize: 60),),
                  Spacer(),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Show Answer"),),
              FloatingActionButton(onPressed: (){runApp(MaterialApp(home: fl4(),));},child: Icon(Icons.navigate_next),)
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
              onPressed: (){runApp(MaterialApp(home: MyApp(),));},
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

class fl4 extends StatelessWidget {
  const fl4({Key? key}) : super(key: key);

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
                  Text("Card #4",style: TextStyle(fontSize: 20),),
                  Spacer(),
                  Text("Title",style: TextStyle(fontSize: 60),),
                  Spacer(),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Show Answer"),),
              FloatingActionButton(onPressed: (){runApp(MaterialApp(home: fl5(),));},child: Icon(Icons.navigate_next),)
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
              onPressed: (){runApp(MaterialApp(home: MyApp(),));},
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

class fl5 extends StatelessWidget {
  const fl5({Key? key}) : super(key: key);

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
                  Text("Card #5",style: TextStyle(fontSize: 20),),
                  Spacer(),
                  Text("Title",style: TextStyle(fontSize: 60),),
                  Spacer(),
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Show Answer"),),
              FloatingActionButton(onPressed: (){runApp(MaterialApp(home: fl1(),));},child: Icon(Icons.navigate_next),)
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
              onPressed: (){runApp(MaterialApp(home: MyApp(),));},
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