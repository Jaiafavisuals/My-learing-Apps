import 'package:expenses_app/widgets/new_expense.dart';
import 'package:flutter/material.dart';
import 'package:expenses_app/models/expense.dart';
import 'package:expenses_app/widgets/expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({Key? key}) : super(key: key);
  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpense = [
    Expense(
      title: 'Flutter Course',
      amount: 20.00,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'My Time',
      amount: 65.90,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (cxt) => NewExpense(
        onAddExpense: _addExpense,
      ),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpense.add(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter ExpenseTracker'),
        actions: [
          IconButton(
            onPressed: () {
              _openAddExpenseOverlay();
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text('data'),
          Expanded(
            child: ExpensesList(expenses: _registeredExpense),
          )
        ],
      ),
    );
  }
}
