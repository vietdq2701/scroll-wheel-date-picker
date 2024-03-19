import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/theme_constant.dart';
import '../managers/date_manager.dart';
import 'curve_scroll_wheel.dart';

class CurveDatePicker extends StatelessWidget {
  final DateManager dateManager;
  final bool loopDays;
  final bool loopMonths;
  final bool loopYears;

  CurveDatePicker({
    super.key,
    DateManager? dateManager,
    this.loopDays = true,
    this.loopMonths = true,
    this.loopYears = false,
  }) : dateManager = dateManager ?? DateManager.empty();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[800]!.withOpacity(0.5),
            borderRadius: BorderRadius.circular(CupertinoContextMenu.kOpenBorderRadius),
          ),
        ),
        SizedBox(
          height: kDefaultWheelPickerHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Days
              Expanded(
                child: ListenableBuilder(
                  listenable: dateManager,
                  builder: (context, child) {
                    return CurveScrollWheel(
                      items: dateManager.getDayManager.getDays,
                      selectedIndex: dateManager.getDayManager.getSelectedIndex,
                      onSelectedItemChanged: (value) => dateManager.changeDay(day: value),
                      looping: loopDays,
                    );
                  },
                ),
              ),

              // Months
              Expanded(
                child: CurveScrollWheel(
                  items: dateManager.getMonthManager.getMonths,
                  selectedIndex: dateManager.getMonthManager.getSelectedIndex,
                  onSelectedItemChanged: (value) => dateManager.changeMonth(month: value),
                  looping: loopMonths,
                ),
              ),

              //Years
              Expanded(
                child: CurveScrollWheel(
                  items: dateManager.getYearManager.getYears,
                  selectedIndex: dateManager.getYearManager.getSelectedIndex,
                  onSelectedItemChanged: (value) => dateManager.changeYear(year: value),
                  looping: loopYears,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
