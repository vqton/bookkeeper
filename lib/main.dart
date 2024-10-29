import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'settings_screen.dart';
import 'account_screen.dart';
import 'investment_screen.dart';
import 'transaction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Financial Management',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/accounts': (context) => const AccountScreen(),
        '/investments': (context) => const InvestmentScreen(),
        '/transactions': (context) => const TransactionScreen(),
      },
    );
  }
}
