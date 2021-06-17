import 'package:flutter/material.dart';
import 'package:adm/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    print('O build foi chamado');
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              AnimatedBuilder(
                  animation: counter,
                  builder: (context, snapshot) {
                    return Text(
                      counter.counter.toString(),
                      style: Theme.of(context).textTheme.headline4,
                    );
                  }),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter.addCounter();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ));
  }
}
