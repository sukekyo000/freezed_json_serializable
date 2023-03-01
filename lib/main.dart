import 'package:flutter/material.dart';
import 'package:icon_animation/person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  var isChanged = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 1), vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("アイコンアニメーション"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final test = Person(firstName: "kyosuke", lastName: "kawasaki", age: 24);
                final test2 = test.copyWith(firstName: "aiueo");
                print(test.toJson());
                // 出力値
                // {first_name: kyosuke, lastName: kawasaki, age: 24}
                print(test2.toJson());
                // 出力値
                // {first_name: aiueo, lastName: kawasaki, age: 24}
                print(test.toJson()["age"]);
                // 出力値
                // 24
                print(test.toJson()["age"].runtimeType);
                // 出力値
                // int
                print(test.toJson()["birth_date"]);
                // 出力値
                // null
                print(test.toJson()["birth"]);
                // 出力値
                // null
              },
              child: const Text('テスト')
            )
          ],
        ),
      )
    );
  }
}