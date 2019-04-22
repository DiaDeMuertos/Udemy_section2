import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Udemy course',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter & Dart'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
        child: Container(
          color: Colors.pink[100],
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Jelow',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'World',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  foreground: Paint()
                    ..strokeWidth = 1
                    ..color = Colors.red
                    ..style = PaintingStyle.stroke,
                ),
              ),
              Container(
                color: Colors.grey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Jelow',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'World',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        foreground: Paint()
                          ..strokeWidth = 1
                          ..color = Colors.red
                          ..style = PaintingStyle.stroke,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    color: Colors.green,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Image(
                width: 50,
                image: NetworkImage(
                    'https://ya-webdesign.com/images/cartoon-skull-png-14.vnd'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: Image(
                  width: 50,
                  image: AssetImage('assets/images/skull_tattoo.png'),
                ),
              ),
              Container(
                color: Colors.indigo,
                width: 200,
                child: Center(
                  child: Text(
                    'Here we go!!!!',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                color: Colors.indigo,
                width: 200,
                height: 25,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Run Run',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 60, minWidth: 60),
                child: Container(
                  color: Colors.orange,
                  width: 10,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Meow Meow',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: Colors.cyan,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      ('(2+2)'),
                      style: TextStyle(color: Colors.white),
                    ),
                    Baseline(
                      baseline: 0,
                      baselineType: TextBaseline.ideographic,
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                color: Colors.lightGreen,
                width: 100,
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image(
                    image: AssetImage('assets/images/skull_tattoo.png'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Container(
                  color: Colors.blueAccent,
                  child: Center(
                    child: SizedBox(
                      width: 50,
                      child: Image(
                        image: AssetImage('assets/images/skull_tattoo.png'),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
