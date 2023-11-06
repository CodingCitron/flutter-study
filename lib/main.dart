import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors
// 참조: https://black-glasses.tistory.com/entry/Flutter-Prefer-const-with-constant-constructors-%ED%95%B4%EA%B2%B0%EB%B0%A9%EB%B2%95

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF181818), /* ARGB */
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 40
          ),
          child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Hey, Selena',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text('Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            )
        )
      ),
    );
  }
}

