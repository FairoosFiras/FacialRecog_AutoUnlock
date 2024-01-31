import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Notification {
  String description;
  String message;
  DateTime date;

  Notification({required this.description, required this.message, required this.date});
}

class MyApp extends StatelessWidget {
  final List<Notification> transactions = [
    Notification(description: 'Doorbell rung', message: 'Unrecognized Face, door bell rung. \n', date: DateTime.now().subtract(Duration(days: 2))),
    Notification(description: 'Motion Detected', message: 'Motion has been detected by the front door\n', date: DateTime.now().subtract(Duration(days: 1))),
    Notification(description: 'Door Unlocked', message: 'User locked the door \n', date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Visage History', style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 161, 40, 182),          
        ),
        body: TransactionList(transactions: transactions),
      ),
    );
  }
}

class TransactionList extends StatelessWidget {
  final List<Notification> transactions;

  TransactionList({required this.transactions});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        return TransactionListItem(transaction: transactions[index]);
      },
    );
  }
}

class TransactionListItem extends StatelessWidget {
  final Notification transaction;

  TransactionListItem({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(transaction.description),
      subtitle: Text('${transaction.message} \$ - ${transaction.date.toLocal()}'),
    );
  }
}