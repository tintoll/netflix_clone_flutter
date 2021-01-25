import 'package:flutter/material.dart';
import 'package:flutter_netflix/widget/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Netflix Clone',
        theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.black,
            accentColor: Colors.white),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                Container(
                  child: Center(child: Text('home')),
                ),
                Container(
                  child: Center(child: Text('search')),
                ),
                Container(
                  child: Center(child: Text('save')),
                ),
                Container(
                  child: Center(child: Text('more')),
                ),
              ],
            ),
            bottomNavigationBar: Bottom(),
          ),
        ));
  }
}
