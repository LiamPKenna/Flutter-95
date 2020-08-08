import 'package:flutter/material.dart';
import 'package:flutter_95/widgets/inset.dart';
import 'package:flutter_95/widgets/inset_grey.dart';
import 'package:flutter_95/widgets/raised.dart';
import 'package:flutter_95/widgets/title_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'MS Sans',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Raised(
              child: Container(
                height: 100,
                width: 200,
                padding: EdgeInsets.all(15.0),
                color: Color.fromRGBO(191, 191, 193, 1),
                child: Raised(
                  child: Text('hello!'),
                ),
              ),
            ),
            Raised(
              child: Container(
                height: 100,
                width: 200,
                padding: EdgeInsets.all(5.0),
                color: Color.fromRGBO(191, 191, 193, 1),
                child: InsetGrey(
                    child: Text(
                  'OK',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w900,
                  ),
                )),
              ),
            ),
            Raised(
              child: Container(
                height: 100,
                width: 200,
                padding: EdgeInsets.all(5.0),
                color: Color.fromRGBO(191, 191, 193, 1),
                child: Inset(
                    color: Colors.blue.shade900,
                    child: Text(
                      'Message Text',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    )),
              ),
            ),
            TitleBar(title: 'asdf')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {print('press');},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
