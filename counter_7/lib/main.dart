import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Program Counter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {

      if ((_counter + (-1))== -1) {
        _counter= 0;
      } else {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (_counter%2 == 0)
              const Text(
                'GENAP',
                style: TextStyle(color: Colors.red,),
              )
            else if (_counter%2==1)
                const Text(
                  'GANJIL',
                  style: TextStyle(color: Colors.blue,),
              ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),

      floatingActionButton: Padding(
        // Buat button decrement dan increment
        padding: const EdgeInsets.only(left: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Check apakah counter sudah ada nilainya atau belum
            if (_counter >=1) 
              Padding(
                padding: const EdgeInsets.all (49.0),
                child: FloatingActionButton(
                  onPressed: _decrementCounter,  
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
              ),
  
              Padding(
                padding: const EdgeInsets.all(49.0),
                child: FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

