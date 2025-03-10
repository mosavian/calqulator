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
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          SizedBox(height: 32),
                          NumpadItems('AC', '/', '%'),
                          SizedBox(height: 10),
                          NumpadItems('7', '8', '9'),
                          SizedBox(height: 10),
                          NumpadItems('4', '5', '6'),
                          SizedBox(height: 10),
                          NumpadItems('1', '2', '3'),
                          SizedBox(height: 10),
                          NumpadItems('C', '0', '.'),
                          SizedBox(height: 40),
                        ],
                      ),
                    ),

                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              '*',
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
                          SizedBox(height: 20),

                          GetSingleItem('+'),
                          SizedBox(height: 20),

                          GetSingleItem('='),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  NumpadItems(String numpadText1, String numpadText2, String numpadText3) {
    return Row(
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
        SizedBox(width: 10),
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
        SizedBox(width: 10),

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
      ],
    );
  }

  Widget GetSingleItem(String itemText) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        itemText,
        style: TextStyle(
          fontSize: 20,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(80, 160),
      ),
    );
  }
}
