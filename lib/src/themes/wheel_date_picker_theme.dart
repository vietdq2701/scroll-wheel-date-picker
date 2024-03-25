import 'package:flutter/material.dart';

import '../widgets/curve_scroll_wheel.dart';
import '../constants/theme_constants.dart';
import '../widgets/wheel_date_picker.dart';
import '../widgets/flat_scroll_wheel.dart';
import '../constants/date_constants.dart';

part 'curve_date_picker_theme.dart';
part 'flat_date_picker_theme.dart';

abstract class WheelDatePickerTheme {
  /// An abstract class for common themes of the `WheelDatePicker`. [WheelDatePicker]
  ///
  /// [wheelPickerHeight] Actual height of the [WheelDatePicker] widget. Defaults to [defaultWheelPickerHeight].
  ///
  /// [itemExtent] Maximum height of each [WheelDatePicker]'s items. Defaults to [defaultItemExtent].
  ///
  /// [overAndUnderCenterOpacity] Opacity of the items in the [WheelDatePicker] that are off centered. Defaults to [defaultOpacity].
  ///
  /// [monthFormat] Format of the month in the [WheelDatePicker]. Defaults to [MonthFormat.full].
  ///
  /// [itemTextStyle] Text style of the items in the [WheelDatePicker]. Defaults to [defaultItemTextStyle].
  ///
  /// [mode] Apply selected item's center design. Defaults to [WheelDatePickerMode.holo].
  ///
  /// [modeColor] Selected item's center design color.
  WheelDatePickerTheme({
    this.wheelPickerHeight = defaultWheelPickerHeight,
    this.itemExtent = defaultItemExtent,
    this.overAndUnderCenterOpacity = defaultOpacity,
    this.monthFormat = MonthFormat.full,
    this.itemTextStyle = defaultItemTextStyle,
    this.mode = WheelDatePickerMode.holo,
    this.modeColor,
  });

  /// Actual height of the [WheelDatePicker] widget. Defaults to [defaultWheelPickerHeight].
  final double wheelPickerHeight;

  /// Maximum height of each [WheelDatePicker]'s items. Defaults to [defaultItemExtent].
  final double itemExtent;

  /// Opacity of the items in the [WheelDatePicker] that are off centered. Defaults to [defaultOpacity].
  final double overAndUnderCenterOpacity;

  /// Format of the month in the [WheelDatePicker]. Defaults to [MonthFormat.full].
  ///
  /// [MonthFormat.full] - Shows the full name of the month.
  ///
  /// [MonthFormat.threeLetters] - Shows the three letters abbreviations of the month.
  ///
  /// [MonthFormat.twoLetters] - Shows the two letters abbreviations of the month.
  final MonthFormat monthFormat;

  /// Text style of the items in the [WheelDatePicker]. Defaults to [defaultItemTextStyle].
  final TextStyle itemTextStyle;

  /// Apply selected item's center design. Defaults to [WheelDatePickerMode.holo].
  final WheelDatePickerMode mode;

  /// Selected item's center design color.
  ///
  /// If mode is [WheelDatePickerMode.holo] then this defaults to [Colors.white].
  ///
  /// If mode is [WheelDatePickerMode.highlight] then this defaults to [Colors.grey] with an opacity of `0.1`.
  ///
  /// If mode is [WheelDatePickerMode.line] then this defaults to [Colors.white].
  final Color? modeColor;
}