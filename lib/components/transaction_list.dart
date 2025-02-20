import 'package:app_gastos/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // Criou essa lista de croaçaõ e convertel para map e colocou como linha "tr"
      children: transactions.map((tr) {
        return Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 150,
                margin: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  border: Border.all(
                    color: Colors.purple,
                    width: 2.5,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Text(
                  'R\$ ${tr.value.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    tr.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat('d MMM y').format(tr.date),
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              )

            ],
          ),
        );
      }).toList(),
    );
  }
}