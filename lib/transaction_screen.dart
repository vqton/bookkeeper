import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for transactions
    final List<Map<String, dynamic>> transactions = [
      {'type': 'Expense', 'amount': -50.00, 'date': '2024-10-28', 'description': 'Grocery Shopping'},
      {'type': 'Income', 'amount': 2000.00, 'date': '2024-10-27', 'description': 'Salary'},
      {'type': 'Expense', 'amount': -100.00, 'date': '2024-10-26', 'description': 'Electricity Bill'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Transactions'),
      ),
      body: ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return Card(
            child: ListTile(
              leading: Icon(
                transaction['amount'] < 0 ? Icons.arrow_upward : Icons.arrow_downward,
                color: transaction['amount'] < 0 ? Colors.red : Colors.green,
              ),
              title: Text(transaction['description']),
              subtitle: Text(transaction['date']),
              trailing: Text(
                '\$${transaction['amount'].toStringAsFixed(2)}',
                style: TextStyle(
                  color: transaction['amount'] < 0 ? Colors.red : Colors.green,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
