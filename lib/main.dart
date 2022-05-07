import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lets Do This',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      home: const MyHomePage(title: 'Lets Do This'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(widget.title),
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Many Times:',
              ),
              Text(
                'cartoon',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //
        },
        tooltip: 'Goal',
        child: const Icon(Icons.account_circle_outlined),
      ),
    );
  }
}
