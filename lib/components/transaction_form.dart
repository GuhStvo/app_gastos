import 'package:app_gastos/models/transaction.dart';
import 'package:flutter/material.dart';

  // final titleController = TextEditingController();
  // final valueController = TextEditingController();

  // Função para submeter o formulário
class TransactionForm extends StatefulWidget {
  final void Function(String, double) onSubmit;

  // Construtor
  const  TransactionForm(this.onSubmit, {Key? key}) : super(key: key);

  @override
  State <TransactionForm>createState() => _TransactionFormState();
  }

  class _TransactionFormState extends State<TransactionForm> {
    final titleController = TextEditingController();
    final valueController = TextEditingController();

  // Função que será chamada ao submeter o formulário
  _submitForm() {
    final title = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0;

    if (title.isEmpty || value <= 0) {
      return;
    }

    Widget.onSubmit(title, value);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              onSubmitted: (_) => _submitForm(),
              decoration: const InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: valueController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              onSubmitted: (_) => _submitForm(),
              decoration: const InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  onPressed: _submitForm,
                  child: const Text(
                    'Nova Transação',
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
