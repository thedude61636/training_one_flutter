import 'package:flutter/material.dart';
import 'package:training_one/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.red,
          accentColor: Colors.yellow,
          iconTheme: IconThemeData(color: Color(0xfff29a94)),
          textTheme: TextTheme(
            bodyText2: TextStyle(color: Color(0xff696b9e)),
          )),
      home: MainScreen(),
    );
  }
}

class MainScreenStatelessScreen extends StatelessWidget {
  final String title;
  final int count;

  const MainScreenStatelessScreen({Key key, @required this.title, this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}

class MainScreenStateful extends StatefulWidget {
  final String title;

  const MainScreenStateful({Key key, this.title}) : super(key: key);

  @override
  _MainScreenStatefulState createState() => _MainScreenStatefulState();
}

class _MainScreenStatefulState extends State<MainScreenStateful> {
  int count = 0;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Text(
        count.toString() + isChecked.toString(),
        style: TextStyle(fontSize: 32),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            count++;
            isChecked = !isChecked;
          });
          print(count);
        },
      ),
    );
  }
}
