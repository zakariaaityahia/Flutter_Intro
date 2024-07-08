import 'package:flutter/material.dart';
import 'package:s_3/quiz.dart';
import 'package:s_3/weather.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
        backgroundColor: Colors.orange,
      ),
      body: const Center(
        child: Text(
          'Hello',
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        )
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.orange, Colors.white])
              ),
              child: Center(
                child: CircleAvatar(
                  radius: 50,backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D4E03AQFnC9W6fUiuIw/profile-displayphoto-shrink_200_200/0/1706811440461?e=2147483647&v=beta&t=lXgKAT8CWu3AkPSaakcjnndg3KnYE7rd8hV7Qt66yAg'),
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Quiz', style: TextStyle(fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Quiz(5))
                );
              }
            ),
            ListTile(
              title: const Text(
                'Weather',style: TextStyle(fontSize: 18),
              ),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Weather(initialCounter: 5,)));
              }
            )
          ],
        ),
      ),
    );
  }
}