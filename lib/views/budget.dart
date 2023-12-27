import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pokkit/utils/constants.dart';
import 'package:pokkit/widgets/ranged_budget_item.dart';

class Budget extends StatelessWidget {
  const Budget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () => {},
        child: Container(
          width: 50,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(
              999,
            ),
          ),
          child: IconButton(
            onPressed: () => {},
            icon: const Icon(
              LucideIcons.plus,
              color: Colors.white,
            ),
          ),
        ),
      ),
      appBar: AppBar(
        title: const Text('My budgets'),
        leading: const SizedBox(),
        bottom: PreferredSize(
          preferredSize: const Size(0, 0),
          child: Container(color: kBorderColor, height: 1),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(kContentPadding),
          child: const Column(
            children: [
              RangedBudgetItem(
                label: "Food & drinks",
                value: 53,
                total: 300,
                date: "Aug 23, 2023",
              ),
              SizedBox(height: 30),
              RangedBudgetItem(
                label: "Food & drinks",
                value: 93,
                total: 218,
                date: "Aug 23, 2023",
              ),
              SizedBox(height: 30),
              RangedBudgetItem(
                label: "Food & drinks",
                value: 23,
                total: 5000,
                date: "Aug 23, 2023",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
