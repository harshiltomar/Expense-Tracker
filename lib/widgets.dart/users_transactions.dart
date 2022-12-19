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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
      ],
    );
  }
}
