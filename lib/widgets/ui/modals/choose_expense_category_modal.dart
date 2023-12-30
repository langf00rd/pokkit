import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokkit/controllers/expense_controller.dart';
import 'package:pokkit/utils/constants.dart';
import 'package:pokkit/utils/get_expense_category_icon.dart';

class ChooseExpenseCategoryModal extends StatelessWidget {
  const ChooseExpenseCategoryModal({super.key});

  @override
  Widget build(BuildContext context) {
    ExpensesController expenseController = Get.put(ExpensesController());
    void showModal(context) {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(kContentPadding),
            child: ListView.separated(
              itemCount: expenseCategories.length,
              separatorBuilder: (context, index) {
                return Container(height: 10);
              },
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: Row(
                    children: [
                      getExpenseCategoryIcon(expenseCategories[index]),
                      const SizedBox(width: 10),
                      Text(
                        expenseCategories[index],
                        style: TextStyle(
                          color:
                              expenseController.selectedExpenseCategory.value ==
                                      expenseCategories[index]
                                  ? CupertinoColors.activeBlue
                                  : Colors.black,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    expenseController.selectedExpenseCategory(
                      expenseCategories[index],
                    );
                    Navigator.of(context).pop();
                  },
                );
              },
            ),
          );
        },
      );
    }

    return Obx(
      () => GestureDetector(
        onTap: () => showModal(context),
        child: Row(children: [
          getExpenseCategoryIcon(
              expenseController.selectedExpenseCategory.value),
          const SizedBox(width: 10),
          Text(expenseController.selectedExpenseCategory.value),
        ]),
      ),
    );
  }
}
