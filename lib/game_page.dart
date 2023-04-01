import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GamePage()
    );
  }
}

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Xの手番です",
                style: TextStyle(fontSize: 40),
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              width: 300,
              height: 300,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.black12,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "00",
                            style: TextStyle(fontSize: 50),
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "01",
                            style: TextStyle(fontSize: 50),
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.black12,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "02",
                            style: TextStyle(fontSize: 50),
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "10",
                            style: TextStyle(fontSize: 50),
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.black12,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "11",
                            style: TextStyle(fontSize: 50),
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "12",
                            style: TextStyle(fontSize: 50),
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.black12,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "20",
                            style: TextStyle(fontSize: 50),
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "21",
                            style: TextStyle(fontSize: 50),
                          )),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      color: Colors.black12,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "22",
                            style: TextStyle(fontSize: 50),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: () {}, child: const Text("やめる")),
            ),
          ]),
        ));
  }
}
