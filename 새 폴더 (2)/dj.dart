import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String message = "아직 버튼을 누르지 않았습니다.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("버튼 예시 앱")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message, style: TextStyle(fontSize: 20)),
            SizedBox(height: 20), // 여백
            ElevatedButton(
              onPressed: () {
                setState(() {
                  message = "버튼을 눌렀습니다!";
                });
              },
              child: Text("눌러보세요"),
            ),
          ],
        ),
      ),
    );
  }
}
