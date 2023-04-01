import 'package:flutter/material.dart';
import 'package:tic_tac_toe/game_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "三目並べ",
              style: TextStyle(fontSize: 100, color: Colors.blue),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => GamePage()));
                  },
                  child: const Text("ゲームを始める")),
            ),
          ],
        ),
      ),
    );
  }
}
