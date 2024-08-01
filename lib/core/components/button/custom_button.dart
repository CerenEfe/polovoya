import 'package:flutter/material.dart';
import 'package:polovoya/core/utils/colors/colors.dart';

// ignore: must_be_immutable
class customButton extends StatelessWidget {
  customButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.borderColor,
    this.buttonColor,
    this.textColor,
  });
  Function()? onPressed;
  final String text;
  final Color? borderColor;
  final Color? buttonColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: buttonColor ?? CustomColors.pink_dark,
        shape: RoundedRectangleBorder(
          side: (borderColor == null)
              ? BorderSide.none
              : BorderSide(color: borderColor!),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.bold,
              color: (buttonColor == CustomColors.white && textColor == null)
                  ? CustomColors.text
                  : ((textColor == null)
                      ? CustomColors.white
                      : CustomColors.pink_dark),
            ),
      ),
    );
  }
}
