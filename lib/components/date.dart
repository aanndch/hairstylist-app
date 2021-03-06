import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  DateWidget(this.date, this.day, this.selectedDate, this.selectDate);

  final date;
  final day;
  final selectedDate;
  final Function selectDate;

  @override
  Widget build(BuildContext context) {
    bool isSelected;
    isSelected = date == selectedDate;

    return AnimatedContainer(
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      duration: Duration(milliseconds: 200),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected
              ? Colors.black.withOpacity(0.9)
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
                  fontFamily: 'Raleway',
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : Colors.black87),
            ),
            Text(
              day,
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  color: isSelected ? Colors.white : Colors.black45),
            )
          ],
        ),
      ),
    );
  }
}
