import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/model/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'New Shoes',
        amount: 69.99,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: 'Weekly Groceries',
        amount: 45.99,
        date: DateTime.now(),
        category: Category.food),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
        context: context, builder: (ctx) => Text('Modal bottom sheet'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('flutter Expense Tracker'),
          actions: [
            IconButton(
                onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add))
          ],
        ),
        body: Column(
          children: [
            const Text('The chart'),
            Expanded(child: ExpensesList(expenses: _registeredExpenses)),
          ],
        ));
  }
}
