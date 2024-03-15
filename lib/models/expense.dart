import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

final formatter =  DateFormat.yMd();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  String get formattedDate{
    return formatter.format(date);
  }
}

class ExpenseBucket {

  final Category category;
  final List<Expense> expenses;

  ExpenseBucket({required this.expenses, required this.category});

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses.where((expense) => expense.category == category).toList();

  double get totalExpenses {
    return expenses.fold(0, (previousValue, element) => previousValue + element.amount);
  }

  Map<Category, double> get categoryAmounts {
    final categoryAmounts = <Category, double>{};
    for (var category in Category.values) {
      categoryAmounts[category] = expenses
          .where((element) => element.category == category)
          .fold(0, (previousValue, element) => previousValue + element.amount);
    }
    return categoryAmounts;
  }
}
