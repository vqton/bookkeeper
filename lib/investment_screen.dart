import 'package:flutter/material.dart';

class InvestmentScreen extends StatelessWidget {
  const InvestmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample data for investments
    final List<Map<String, dynamic>> investments = [
      {'type': 'Stocks', 'amount': 5000.00, 'purchaseDate': '2024-01-01', 'currentValue': 5500.00},
      {'type': 'Bonds', 'amount': 3000.00, 'purchaseDate': '2023-06-15', 'currentValue': 3100.00},
      {'type': 'Real Estate', 'amount': 20000.00, 'purchaseDate': '2022-03-10', 'currentValue': 25000.00},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Investments'),
      ),
      body: ListView.builder(
        itemCount: investments.length,
        itemBuilder: (context, index) {
          final investment = investments[index];
          return Card(
            child: ListTile(
              leading: const Icon(Icons.trending_up),
              title: Text(investment['type']),
              subtitle: Text('Purchased on: ${investment['purchaseDate']}'),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Amount: \$${investment['amount'].toStringAsFixed(2)}'),
                  Text('Current Value: \$${investment['currentValue'].toStringAsFixed(2)}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
