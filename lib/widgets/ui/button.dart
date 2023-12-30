import 'package:flutter/material.dart';
import 'package:pokkit/utils/constants.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.action,
    this.prefix,
    this.suffix,
    this.width = double.infinity,
    required this.label,
    this.margin,
    this.color,
    this.textColor,
    this.isOutlined,
    this.radius,
  });

  final double? radius;
  final Color? color;
  final Color? textColor;
  final VoidCallback action;
  final String label;
  final bool? isOutlined;
  final Widget? prefix;
  final Widget? suffix;
  final double width;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: color ?? Color(isOutlined == true ? 0xFF : 0xFF000000),
        borderRadius: BorderRadius.circular(radius ?? 10),
        border: isOutlined == true
            ? Border.all(color: const Color(0xFFE5E6F0))
            : null,
      ),
      width: width,
      height: kButtonHeight,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 10),
        ),
        height: kButtonHeight,
        onPressed: action,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                prefix != null
                    ? Container(
                        margin: const EdgeInsets.only(right: 7),
                        child: prefix,
                      )
                    : const SizedBox(),
                Text(
                  label,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: textColor ?? Colors.white,
                  ),
                ),
                suffix != null
                    ? Container(
                        margin: const EdgeInsets.only(left: 7),
                        child: suffix,
                      )
                    : const SizedBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
