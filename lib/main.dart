import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';


void main(){
  runApp(const MyThemes());
}

class MyThemes extends StatelessWidget{
  const MyThemes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const MyAppName = 'MyThemesApp';

    return MaterialApp(
      title: MyAppName,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.teal,
        accentColor: Colors.tealAccent,

        fontFamily: 'sans-serif-light',

          textTheme: const TextTheme(

          headline1: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600 ),
      headline2: TextStyle(fontSize: 50.0, fontFamily: 'Snell Roundhand' ),
      headline3: TextStyle(fontSize: 10.0, fontStyle: FontStyle.italic ),
      )
      ),
          home: const myHome(),
    );
  }
}

class myHome extends StatelessWidget{
  const myHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp'),
      ),
      body: Center(
        child: Container(
          color: Theme.of(context).accentColor,
          child: Text('This is my Custom Theme Designed Color',
          style: Theme.of(context).textTheme.headline1,
          ),
        ),
      ),
    );
  }
}