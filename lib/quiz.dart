import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  int counter;
  Quiz(this.counter, {super.key});
  
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Counter=${widget.counter}', style: TextStyle(fontSize: 22),),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ++widget.counter;
                });
              },
              child: const Text('Add', style: TextStyle(color: Colors.blue),),
            ),
          ]
        ),
      ),
    );
  }
}