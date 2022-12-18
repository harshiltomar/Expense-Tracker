import 'package:expensetracker/widgets.dart/transactionc_list.dart';
import 'package:flutter/material.dart';

import '../models/transactions.dart';
import 'new_transactions.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
        id: '101', title: 'Oversized T', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: '102',
        title: 'Netflix Renewal',
        amount: 16.53,
        date: DateTime.now()),
    Transaction(
        id: '103',
        title: 'Spotify Premium',
        amount: 12.99,
        date: DateTime.now()),
    Transaction(
        id: '104',
        title: 'Netflix Renewal',
        amount: 10.99,
        date: DateTime.now()),
  ];

  void _addNewTransaction(String txTitle, double txamount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txamount,
        date: DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
