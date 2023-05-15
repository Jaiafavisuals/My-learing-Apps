import 'package:expenses_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(
    this.expense, {
    super.key,
  });

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(expense.title),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 7,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text('\$${expense.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
                children: [
                  Icon(categoryIcons[expense.category]),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(expense.formattedDate),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
