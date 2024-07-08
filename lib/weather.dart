import 'package:flutter/material.dart';

class Weather extends StatefulWidget {
  final int initialCounter;

  const Weather({super.key, required this.initialCounter});

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  late int counter;

  @override
  void initState() {
    super.initState();
    counter = widget.initialCounter;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Counter = $counter',
              style: const TextStyle(fontSize: 22),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ++counter;
                });
              },
              child: const Text('Add', style: TextStyle(color: Colors.blue),),
            ),
          ],
        ),
      ),
    );
  }
}