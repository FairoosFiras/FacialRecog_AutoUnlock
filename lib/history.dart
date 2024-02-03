import 'package:flutter/material.dart';

class VisageNotification {
  String description;
  String message;
  DateTime date;

  VisageNotification(
      {required this.description, required this.message, required this.date});
}

class History extends StatelessWidget {
  final List<VisageNotification> notifications = [
    VisageNotification(
        description: 'Doorbell rung',
        message: 'Unrecognized Face, door bell rung. \n',
        date: DateTime.now().subtract(Duration(days: 2))),
    VisageNotification(
        description: 'Motion Detected',
        message: 'Motion has been detected by the front door\n',
        date: DateTime.now().subtract(Duration(days: 1))),
    VisageNotification(
        description: 'Door Unlocked',
        message: 'User locked the door \n',
        date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visage History', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 161, 40, 182),
      ),
      body: TransactionList(transactions: notifications),
    );
  }
}

class TransactionList extends StatelessWidget {
  final List<VisageNotification> transactions;

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
  final VisageNotification transaction;

  TransactionListItem({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(transaction.description),
      subtitle: Text('${transaction.message} - ${transaction.date.toLocal()}'),
    );
  }
}
//had to add this comment to make it modified
//had to add this comment to make it modified