import 'package:flutter/material.dart';
import 'package:app_gastos/models/transaction.dart';
import 'package:app_gastos/components/transaction_list.dart';
import 'package:app_gastos/components/transaction_form.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUser();
}

class _TransactionUser extends State<TransactionUser> {
  final _transictions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de corrida',
      value: 320.80,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Celular',
      value: 1500,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Camiseta',
      value: 79,
      date: DateTime.now(),
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transictions),
        TransactionForm(),
      ],
    );
  }
}