import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:pokkit/utils/constants.dart';
import 'package:pokkit/widgets/ui/modals/add_expense_modal.dart';
import 'package:pokkit/widgets/ui/button.dart';

class HomeActionButtons extends StatelessWidget {
  const HomeActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: kBorderColor),
          bottom: BorderSide(color: kBorderColor),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: kContentPadding),
              height: kButtonHeight,
              width: 170,
              child: Button(
                color: Colors.black,
                action: () => showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) => const AddExpenseModal(),
                ),
                prefix: const Icon(
                  LucideIcons.plus,
                  color: Colors.white,
                  size: 18,
                ),
                label: 'Add an expense',
                textColor: Colors.white,
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              height: kButtonHeight,
              width: 110,
              child: Button(
                color: kButtonGrey,
                action: () => {},
                prefix: const Icon(LucideIcons.creditCard,
                    color: Colors.black, size: 18),
                label: 'Top up',
                textColor: Colors.black,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              margin: EdgeInsets.only(right: kContentPadding),
              height: kButtonHeight,
              width: 150,
              child: Button(
                color: kButtonGrey,
                action: () => {},
                prefix:
                    const Icon(LucideIcons.list, color: Colors.black, size: 18),
                label: 'New budget',
                textColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
