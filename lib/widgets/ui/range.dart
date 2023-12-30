import 'package:flutter/material.dart';

class Range extends StatelessWidget {
  const Range({super.key, required this.value});

  final double value;

  Color getActiveRangeColor() {
    if (value >= 80) return Colors.green;
    if (value <= 40) {
      return Colors.red;
    } else {
      return Colors.orange.shade400;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        trackHeight: 4,
        thumbShape: const RoundSliderThumbShape(
          enabledThumbRadius: 0,
          disabledThumbRadius: 0,
        ),
        overlayShape: const RoundSliderThumbShape(
          enabledThumbRadius: 0,
          disabledThumbRadius: 0,
        ),
      ),
      child: Slider(
        value: value,
        max: 100,
        min: 0,
        activeColor: getActiveRangeColor(),
        inactiveColor: Colors.grey.withOpacity(0.2),
        onChanged: (double value) {},
      ),
    );
  }
}
