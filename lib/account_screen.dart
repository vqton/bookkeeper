import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for accounts
    final List<Map<String, dynamic>> accounts = [
      {'name': 'Checking Account', 'type': 'Checking', 'balance': 5000.00},
      {'name': 'Savings Account', 'type': 'Savings', 'balance': 15000.00},
      {'name': 'Investment Account', 'type': 'Investment', 'balance': 25000.00},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Accounts'),
      ),
      body: ListView.builder(
        itemCount: accounts.length,
        itemBuilder: (context, index) {
          final account = accounts[index];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.account_balance),
              title: Text(account['name']),
              subtitle: Text(account['type']),
              trailing: Text('\$${account['balance'].toStringAsFixed(2)}'),
            ),
          );
        },
      ),
    );
  }
}
