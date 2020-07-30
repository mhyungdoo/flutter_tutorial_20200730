import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edit_page.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // 언더바는 해당 클래스 내부에서만 사용하는 변수를 정의할 때 사용함.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("You have pushed the button how many times:"),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          Navigator.push(
           context,
           CupertinoPageRoute(builder: (context) => EditPage(),)
          );
        },
        tooltip: '노트를 추가하려면 클릭하세요.',
        label: Text('메모 추가'),
        icon: Icon(Icons.add),
      ),
    );
  }


}
