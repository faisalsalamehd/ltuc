import 'package:flutter/material.dart';
import 'package:ltuc/util/themes/app_colors.dart';
import 'package:ltuc/view/widgets/text/headline4.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onTap,
    required this.title,
    this.color,
    this.backgroundColor,
  });

  final VoidCallback onTap;
  final String title;
  final Color? color;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 60,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.primary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Center(
            child: Headline4(title: title, color: color ?? AppColors.white),
          ),
        ),
      ),
    );
  }
}
