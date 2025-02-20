import 'package:flutter/material.dart';
import 'components/transaction_user.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Start principal do meu app
    // O MaterialApp é a biblioteca básica do flutter 
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Despesas Pessoais'),
      ),
      body: Column(
        // Alinhamento horizontal do elemento
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          SizedBox(
            child: Card(
              color: Colors.blue,
              elevation: 5, // Serve para usar sombra, é um método mais simples do que usar o box shadow realmente. 
              child: Text('Gráfico'),
            ),
          ),
          TransactionUser(),
        ],
      ),
    );
  }
}