import 'package:flutter/material.dart';

import 'pages/detail_page.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance Design',
      initialRoute: 'home_page',
      routes: <String, WidgetBuilder>{
        'home_page': (BuildContext context) => HomePage(),
        'detail_page': (BuildContext context) => DetailPage(),
      },
    );
  }
}
