import 'package:flutter/material.dart';
import 'package:mvc_demo/Controllers/counter.dart';
//理解MVC，下面是个简单的计数器例子
void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final CounterController _counterController = CounterController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Simple Counter APP'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counterController.increase();
                  });
                },
                child: const Text('Increase')),
            Text('count:${_counterController.counterModel.count}'),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _counterController.reduce();
                  });
                },
                child: const Text('Reduce')),
          ],
        ),
      ),
    ));
  }
}
