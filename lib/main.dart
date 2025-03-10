import 'package:flutter/material.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 44),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextField(
                  style: TextStyle(fontSize: 22),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 15,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        color: Colors.blueGrey,
                        width: 3.0,
                      ),
                    ),
                    labelText: 'Input number...',
                    labelStyle: TextStyle(fontSize: 20, color: Colors.blue),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(width: 3, color: Colors.cyan),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                numpadItems('AC', '+/-', '%', '/'),
                SizedBox(height: 10),
                numpadItems('7', '8', '9', '*'),
                SizedBox(height: 10),
                numpadItems('4', '5', '6', '-'),
                SizedBox(height: 5),
                numpadItems('1', '2', '3', '+'),
                SizedBox(height: 5),
                numpadItems('C', '0', '.', '='),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget numpadItems(
    String numpadText1,
    String numpadText2,
    String numpadText3,
    String numpadText4,
  ) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text(
            numpadText1,
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: Size(80, 80),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            numpadText2,
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: Size(80, 80),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(
            numpadText3,
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: Size(80, 80),
          ),
        ),
        ElevatedButton(
          onPressed: () {},

          child: Text(
            numpadText4,
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),

          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize:
                (numpadText4 == "=" || numpadText4 == "+")
                    ? Size(80, 110)
                    : Size(80, 80),
          ),
        ),
      ],
    );
  }
}
