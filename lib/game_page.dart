import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

List<List<List<int>>> lines = [
  [
    [0, 0],
    [0, 1],
    [0, 2],
  ],
  [
    [1, 0],
    [1, 1],
    [1, 2],
  ],
  [
    [2, 0],
    [2, 1],
    [2, 2],
  ],
  [
    [0, 0],
    [1, 0],
    [2, 0],
  ],
  [
    [0, 1],
    [1, 1],
    [2, 1],
  ],
  [
    [0, 2],
    [1, 2],
    [2, 2],
  ],
  [
    [0, 0],
    [1, 1],
    [2, 2],
  ],
  [
    [0, 2],
    [1, 1],
    [2, 0],
  ],
];

class _GamePageState extends State<GamePage> {
  List<List<String>> field = [
    ["", "", ""],
    ["", "", ""],
    ["", "", ""],
  ];
  String currentPlayer = "X";
  bool finished = false;
  String winner = "";

  void updateField(String player, int row, int column) {
    if (finished) return;
    if (field[row][column] != "") return;
    setState(() {
      field[row][column] = player;
      currentPlayer = player == "X" ? "O" : "X";
    });
    checkIfGameFinished();
  }

  void checkIfGameFinished() {
    for (var line in lines) {
      String first = field[line[0][0]][line[0][1]];
      String second = field[line[1][0]][line[1][1]];
      String third = field[line[2][0]][line[2][1]];
      if (first != "" && first == second && second == third) {
        print("$first の勝ち！");
        finished = true;
        winner = first;
        return;
      }
    }

    bool isFilled = true;
    for (int row = 0; row < 3; row++) {
      for (int column = 0; column < 3; column++) {
        if (field[row][column] == "") {
          isFilled = false;
        }
      }
    }
    if (isFilled) {
      print("引き分け");
      finished = true;
      winner = "";
    }
  }

  Widget _buildCell(int row, int col) {
    return Align(
      alignment: _getAlignment(row, col),
      child: Container(
        width: 100.0,
        height: 100.0,
        color: (row + col) % 2 == 0 ? Colors.black12 : Colors.blue.shade100,
        child: TextButton(
          onPressed: () => updateField(currentPlayer, row, col),
          child: Text(
            field[row][col],
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }

  Alignment _getAlignment(int row, int col) {
    if (row == 0) {
      if (col == 0) {
        return Alignment.topLeft;
      } else if (col == 1) {
        return Alignment.topCenter;
      } else {
        return Alignment.topRight;
      }
    } else if (row == 1) {
      if (col == 0) {
        return Alignment.centerLeft;
      } else if (col == 1) {
        return Alignment.center;
      } else {
        return Alignment.centerRight;
      }
    } else {
      if (col == 0) {
        return Alignment.bottomLeft;
      } else if (col == 1) {
        return Alignment.bottomCenter;
      } else {
        return Alignment.bottomRight;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    String message = "$currentPlayer の手番です";
    if (finished) {
      message = winner == "" ? "引き分け" : "$winner の勝ち！";
    }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                message,
                style: const TextStyle(fontSize: 40),
              ),
            ),
            Container(
              color: Colors.blue.shade100,
              width: 300,
              height: 300,
              child: Stack(
                children: [
                  _buildCell(0, 0),
                  _buildCell(0, 1),
                  _buildCell(0, 2),
                  _buildCell(1, 0),
                  _buildCell(1, 1),
                  _buildCell(1, 2),
                  _buildCell(2, 0),
                  _buildCell(2, 1),
                  _buildCell(2, 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
