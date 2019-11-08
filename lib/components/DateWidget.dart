import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  DateWidget(this.date, this.day, this.selectedDate, this.selectDate);

  final date;
  final day;
  final selectedDate;
  bool isSelected;
  final Function selectDate;

  @override
  Widget build(BuildContext context) {
    isSelected = date == selectedDate;

    return AnimatedContainer(
      margin: EdgeInsets.only(right: 15.0, left: 15.0),
      duration: Duration(milliseconds: 200),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected
              ? Colors.black.withOpacity(0.8)
              : Colors.grey.withOpacity(0.1)),
      width: 70.0,
      height: 70.0,
      child: InkWell(
        onTap: () {
          selectDate(date);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              date.toString(),
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.white : Colors.black54),
            ),
            Text(
              day,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 15.0,
                  fontWeight: FontWeight.normal,
                  color: isSelected ? Colors.white : Colors.black38),
            )
          ],
        ),
      ),
    );
  }
}
