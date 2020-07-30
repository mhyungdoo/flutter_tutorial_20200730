import 'package:flutter/material.dart';
import 'memo.dart';
import 'db.dart';




class EditPage extends StatelessWidget {
  String title = '';
  String text = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: saveDB,
          ),
        ],
      ),


      body:

      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              keyboardType: TextInputType.multiline,
              maxLines: null,
              // obscureText: true,  암호 입력 시 사용
              decoration: InputDecoration(
               // border: OutlineInputBorder(),
                hintText: '제목을 넣어주세요',
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                keyboardType: TextInputType.multiline,
                maxLines: null,
                // obscureText: true,  암호 입력 시 사용
                decoration: InputDecoration(
                  // border: OutlineInputBorder(),
                  hintText: '제목을 넣어주세요',
                ),
              ),
            ),

        ],
        ),
      ),




    );
  }
}


  Future<void> save DB() async {

  DBHelper sd = DBHelper();

  var fido = Memo(
    id: 3,
    title: this.title,
    text: this.text,
    createTime: DateTime.now().toString(),
    editTime: DataTime.now().toString(),
  );

  await sd.insertMemo(fido);

  print(await sd.memos());


  )

}