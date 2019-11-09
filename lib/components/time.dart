import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  TimeWidget(this.time, this.selectedTime, this.selectTime);

  final time;
  final selectedTime;
  final Function selectTime;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    isSelected = time == selectedTime;

    return AnimatedContainer(
      margin: EdgeInsets.only(left: 15.0, right: 15.0),
      duration: Duration(milliseconds: 200),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: isSelected
              ? Colors.black.withOpacity(0.9)
              : Colors.grey.withOpacity(0.1)),
      width: 75.0,
      height: 50.0,
      child: InkWell(
        onTap: () {
          selectTime(time);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              time,
              style: TextStyle(
                  fontFamily: 'Gothic',
                  fontSize: 25.0,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                  color: isSelected ? Colors.white : Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
