import 'package:flutter/material.dart';
import 'package:polovoya/core/extension/context_extension.dart';

extension PaddingExtension on BuildContext {
  EdgeInsets all(double value) => EdgeInsets.all(value);

  EdgeInsets symmetric({double vertical = 0.0, double horizontal = 0.0}) =>
      EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal);

  EdgeInsets get paddingLow => all(heightPercentage(0.004));
  EdgeInsets get paddingNormal => all(heightPercentage(0.008));
  EdgeInsets get paddingMedium => all(heightPercentage(0.014));
  EdgeInsets get paddingHigh => all(heightPercentage(0.016));
  EdgeInsets get paddingExtraHigh => all(heightPercentage(0.1));

  EdgeInsets get paddingLowVertical =>
      symmetric(vertical: heightPercentage(0.004));
  EdgeInsets get paddingNormalVertical =>
      symmetric(vertical: heightPercentage(0.008));
  EdgeInsets get paddingMediumVertical =>
      symmetric(vertical: heightPercentage(0.014));
  EdgeInsets get paddingHighVertical =>
      symmetric(vertical: heightPercentage(0.016));
  EdgeInsets get paddingExtraHighVertical =>
      symmetric(vertical: heightPercentage(0.1));

  EdgeInsets get paddingLowHorizontal =>
      symmetric(horizontal: heightPercentage(0.004));
  EdgeInsets get paddingNormalHorizontal =>
      symmetric(horizontal: heightPercentage(0.008));
  EdgeInsets get paddingMediumHorizontal =>
      symmetric(horizontal: heightPercentage(0.014));
  EdgeInsets get paddingHighHorizontal =>
      symmetric(horizontal: heightPercentage(0.016));
  EdgeInsets get paddingExtraHighHorizontal =>
      symmetric(horizontal: heightPercentage(0.1));

  EdgeInsets get paddingLowRight =>
      EdgeInsets.only(right: heightPercentage(0.004));
  EdgeInsets get paddingNormalRight =>
      EdgeInsets.only(right: heightPercentage(0.008));
  EdgeInsets get paddingMediumRight =>
      EdgeInsets.only(right: heightPercentage(0.014));
  EdgeInsets get paddingHighRight =>
      EdgeInsets.only(right: heightPercentage(0.016));
  EdgeInsets get paddingExtraHighRight =>
      EdgeInsets.only(right: heightPercentage(0.1));

  EdgeInsets get paddingLowLeft =>
      EdgeInsets.only(left: heightPercentage(0.004));
  EdgeInsets get paddingNormalLeft =>
      EdgeInsets.only(left: heightPercentage(0.008));
  EdgeInsets get paddingMediumLeft =>
      EdgeInsets.only(left: heightPercentage(0.014));
  EdgeInsets get paddingHighLeft =>
      EdgeInsets.only(left: heightPercentage(0.016));
  EdgeInsets get paddingExtraHighLeft =>
      EdgeInsets.only(left: heightPercentage(0.1));

  EdgeInsets get paddingLowBottom =>
      EdgeInsets.only(bottom: heightPercentage(0.004));
  EdgeInsets get paddingNormalBottom =>
      EdgeInsets.only(bottom: heightPercentage(0.008));
  EdgeInsets get paddingMediumBottom =>
      EdgeInsets.only(bottom: heightPercentage(0.014));
  EdgeInsets get paddingHighBottom =>
      EdgeInsets.only(bottom: heightPercentage(0.016));
  EdgeInsets get paddingExtraHighBottom =>
      EdgeInsets.only(bottom: heightPercentage(0.1));

  EdgeInsets get paddingLowTop => EdgeInsets.only(top: heightPercentage(0.004));
  EdgeInsets get paddingNormalTop =>
      EdgeInsets.only(top: heightPercentage(0.008));
  EdgeInsets get paddingMediumTop =>
      EdgeInsets.only(top: heightPercentage(0.014));
  EdgeInsets get paddingHighTop =>
      EdgeInsets.only(top: heightPercentage(0.016));
  EdgeInsets get paddingExtraHighTop =>
      EdgeInsets.only(top: heightPercentage(0.1));
}
