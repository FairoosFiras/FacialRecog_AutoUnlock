import 'package:flutter/material.dart';

<<<<<<< HEAD
void main() {
  runApp(MyApp());
}

class Notification {
=======
class VisageNotification {
>>>>>>> demo
  String description;
  String message;
  DateTime date;

<<<<<<< HEAD
  Notification({required this.description, required this.message, required this.date});
}

class MyApp extends StatelessWidget {
  final List<Notification> transactions = [
    Notification(description: 'Doorbell rung', message: 'Unrecognized Face, door bell rung. \n', date: DateTime.now().subtract(Duration(days: 2))),
    Notification(description: 'Motion Detected', message: 'Motion has been detected by the front door\n', date: DateTime.now().subtract(Duration(days: 1))),
    Notification(description: 'Door Unlocked', message: 'User locked the door \n', date: DateTime.now()),
=======
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
>>>>>>> demo
  ];

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Visage History', style: TextStyle(color: Colors.white)),
          backgroundColor: Color.fromARGB(255, 161, 40, 182),          
        ),
        body: TransactionList(transactions: transactions),
      ),
=======
    return Scaffold(
      appBar: AppBar(
        title: Text('Visage History', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 161, 40, 182),
      ),
      body: TransactionList(transactions: notifications),
>>>>>>> demo
    );
  }
}

class TransactionList extends StatelessWidget {
<<<<<<< HEAD
  final List<Notification> transactions;
=======
  final List<VisageNotification> transactions;
>>>>>>> demo

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
<<<<<<< HEAD
  final Notification transaction;
=======
  final VisageNotification transaction;
>>>>>>> demo

  TransactionListItem({required this.transaction});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(transaction.description),
<<<<<<< HEAD
      subtitle: Text('${transaction.message} \$ - ${transaction.date.toLocal()}'),
    );
  }
}
=======
      subtitle: Text('${transaction.message} - ${transaction.date.toLocal()}'),
    );
  }
}
//had to add this comment to make it modified
//had to add this comment to make it modified
>>>>>>> demo
