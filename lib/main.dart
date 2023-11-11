import 'package:flutter/material.dart';
import 'package:flutter_app_2/widgets/button.dart';
import 'package:flutter_app_2/widgets/currency_card.dart';
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
        backgroundColor: const Color(0xFF181818), /* ARGB */
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
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
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text(
                    'Total Balance',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white.withOpacity(0.8)
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    '\$5 194 482',
                    style: TextStyle(
                        fontSize: 42,
                        color: Colors.white.withOpacity(0.8),
                        fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                       Button(
                        text: 'Transfer',
                        bgColor: Colors.amber,
                        textColor: Colors.white,
                      ),
                      Button(
                        text: 'Request',
                        bgColor: Color(0xFF1F2123),
                        textColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text('Wallets',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text('View All',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 18,
                        )
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const CurrencyCard(
                    name: 'Euro',
                    code: 'EUR',
                    amount: '6 428',
                    icon: Icons.euro_rounded,
                    isInverted: false,
                  ),
                  Transform.translate(
                    offset: Offset(0, -25),
                    child: const CurrencyCard(
                          name: 'Bitcoin',
                          code: 'BTC',
                          amount: '9 785',
                          icon: Icons.currency_bitcoin,
                          isInverted: true,
                      ),
                  ),
                  Transform.translate(
                    offset: Offset(0, -50),
                    child: const CurrencyCard(
                      name: 'Dollar',
                      code: 'USD',
                      amount: '428',
                      icon: Icons.attach_money_outlined,
                      isInverted: false,
                    ),
                  ),
                ],
              )
          ),
        )
      ),
    );
  }
}

