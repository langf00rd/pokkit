import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

Widget getExpenseCategoryIcon(String category) {
  Icon getIcon() {
    switch (category) {
      case 'Grocery & Shopping':
        return const Icon(LucideIcons.shoppingBag);
      case 'Clothing':
        return const Icon(LucideIcons.shirt);
      case 'Travel':
        return const Icon(LucideIcons.plane);
      case 'Rent & home':
        return const Icon(LucideIcons.home);
      case 'Education':
        return const Icon(LucideIcons.school2);
      case 'Food & drinks':
        return const Icon(LucideIcons.cupSoda);
      case 'Medical':
        return const Icon(LucideIcons.stethoscope);
      case 'Entertainment':
        return const Icon(LucideIcons.mic2);
      case 'Business':
        return const Icon(LucideIcons.coins);
      case 'Misc':
        return const Icon(LucideIcons.octagon);
      case 'Pets':
        return const Icon(LucideIcons.dog);
      case 'Transport':
        return const Icon(LucideIcons.car);
      default:
        return const Icon(LucideIcons.plus);
    }
  }

  return Container(
    width: 45,
    height: 45,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(999),
      color: Colors.grey.withOpacity(0.1),
    ),
    child: getIcon(),
  );
}
