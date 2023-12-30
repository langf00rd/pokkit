import 'package:flutter/material.dart';
import 'package:pokkit/utils/constants.dart';
import 'package:pokkit/widgets/ui/range.dart';

class RangedBudgetItem extends StatelessWidget {
  const RangedBudgetItem({
    super.key,
    required this.label,
    required this.value,
    required this.total,
    required this.date,
  });

  final String label;
  final double value;
  final double total;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontWeight: FontWeight.w700)),
        const SizedBox(height: 5),
        Range(value: value),
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$value% used of \$${total.round()}'),
            Text(date, style: TextStyle(color: kGreyText)),
          ],
        )
      ],
    );
  }
}
