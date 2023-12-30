import 'package:get/get.dart';
import 'package:pokkit/utils/constants.dart';

class ExpensesController extends GetxController {
  RxBool isFetchingExpenses = true.obs;
  RxString selectedExpenseCategory = expenseCategories[0].obs;
  RxList expenses = [].obs;

  setSelectedExpenseCategory(String value) {
    selectedExpenseCategory.value = value;
  }
}
