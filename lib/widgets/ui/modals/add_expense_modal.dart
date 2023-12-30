import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pokkit/controllers/expense_controller.dart';
import 'package:pokkit/utils/constants.dart';
import 'package:pokkit/widgets/ui/button.dart';
import 'package:pokkit/widgets/ui/modals/choose_expense_category_modal.dart';

class AddExpenseModal extends StatefulWidget {
  const AddExpenseModal({super.key});

  @override
  State<AddExpenseModal> createState() => _AddExpenseModalState();
}

class _AddExpenseModalState extends State<AddExpenseModal> {
  DateTime date = DateTime(2016, 10, 26);
  DateTime time = DateTime(2016, 5, 10, 22, 35);
  DateTime dateTime = DateTime(2016, 8, 3, 17, 45);
  ExpensesController expenseController = Get.put(ExpensesController());

  void _showDialog(Widget child) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        color: Colors.white,
        child: SafeArea(top: false, child: child),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(
          left: kContentPadding, right: kContentPadding, top: 60),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Add an expense',
                style: TextStyle(
                  fontSize: kFontSizeL,
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                onTap: () => Get.back(),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: const Icon(LucideIcons.x),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextField(
            autofocus: true,
            style: TextStyle(fontSize: kFontSizeL),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.left,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 15,
              ),
              prefix: const Text('\$'),
              prefixStyle: TextStyle(
                color: Colors.black,
                fontSize: kFontSizeL,
              ),
              hintText: '1000',
              hintStyle: TextStyle(color: kGreyText, fontSize: kFontSizeL),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: kBorderColor),
                bottom: BorderSide(color: kBorderColor),
              ),
            ),
            child: Obx(
              () => Expanded(
                child: Column(
                  children: [
                    const ChooseExpenseCategoryModal(),
                    Container(
                      child: expenseController.selectedExpenseCategory.value ==
                              'Other'
                          ? Padding(
                              padding: EdgeInsets.only(left: kContentPadding),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 8,
                                        height: 8,
                                        decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius:
                                              BorderRadius.circular(999),
                                        ),
                                      ),
                                      const SizedBox(width: 30),
                                      Expanded(
                                        child: TextField(
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 0,
                                                    horizontal: 15),
                                            hintText: 'Enter a category',
                                            hintStyle:
                                                TextStyle(color: kGreyText),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                color: Color(0xFFE5E6F0),
                                              ), //<-- SEE HERE
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              borderSide: const BorderSide(
                                                color: Color(0xFFE5E6F0),
                                              ), //<-- SEE HERE
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: kBorderColor)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Choose date'),
                GestureDetector(
                  onTap: () => _showDialog(
                    CupertinoDatePicker(
                      initialDateTime: dateTime,
                      onDateTimeChanged: (DateTime newDateTime) {
                        setState(() => dateTime = newDateTime);
                      },
                    ),
                  ),
                  child: Text(
                    '${dateTime.month}/${dateTime.day}/${dateTime.year} ${dateTime.hour}:${dateTime.minute}',
                    style: TextStyle(
                      color: kGreyText,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: kBorderColor)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Label'),
                Row(
                  children: [
                    SizedBox(
                      height: kButtonHeight,
                      width: 95,
                      child: Button(
                        color: Colors.black,
                        action: () => {},
                        prefix: const Icon(LucideIcons.hand,
                            color: Colors.white, size: 18),
                        label: 'Want',
                        textColor: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      height: kButtonHeight,
                      width: 95,
                      child: Button(
                        color: Colors.grey.withOpacity(0.1),
                        action: () => {},
                        prefix: const Icon(LucideIcons.heart,
                            color: Colors.black, size: 18),
                        label: 'Need',
                        textColor: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
