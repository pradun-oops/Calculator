import 'package:calculator/constant/color.dart';
import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  const Button1({
    super.key,
    required this.label,
    this.textColor = Colors.white,
  });
  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).setValue(label);
      },
      child: Material(
        elevation: 3,
        color: AppColor.secondary2Color,
        borderRadius: BorderRadius.circular(20),
        child: CircleAvatar(
          backgroundColor: AppColor.secondary2Color,
          radius: 40,
          child: Text(
            label,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: textColor),
          ),
        ),
      ),
    );
  }
}
