import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Financial Overview'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.account_balance),
              title: const Text('Accounts'),
              onTap: () {
                Navigator.pushNamed(context, '/accounts');
              },
            ),
            ListTile(
              leading: const Icon(Icons.trending_up),
              title: const Text('Investments'),
              onTap: () {
                Navigator.pushNamed(context, '/investments');
              },
            ),
            ListTile(
              leading: const Icon(Icons.receipt),
              title: const Text('Transactions'),
              onTap: () {
                Navigator.pushNamed(context, '/transactions');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Account Summary',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                leading: const Icon(Icons.account_balance_wallet),
                title: const Text('Total Balance'),
                subtitle: const Text('\$10,000.00'),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: const <Widget>[
                  ListTile(
                    leading: Icon(Icons.arrow_upward, color: Colors.red),
                    title: Text('Grocery Shopping'),
                    subtitle: Text('- \$50.00'),
                    trailing: Text('Oct 28, 2024'),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_downward, color: Colors.green),
                    title: Text('Salary'),
                    subtitle: Text('+ \$2,000.00'),
                    trailing: Text('Oct 27, 2024'),
                  ),
                  ListTile(
                    leading: Icon(Icons.arrow_upward, color: Colors.red),
                    title: Text('Electricity Bill'),
                    subtitle: Text('- \$100.00'),
                    trailing: Text('Oct 26, 2024'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
