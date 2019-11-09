import 'package:flutter/material.dart';
import '../components/date.dart';
import '../components/barber.dart';
import '../components/time.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedDate = 18;
  String selectedBarber = 'Jonathan';
  String selectedTime = '11:00';

  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'BOOKING',
          style: TextStyle(
              fontSize: 20.0, color: Colors.black, fontFamily: 'Gothic'),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 110.0,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 3.0,
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1.5)
            ], color: Colors.white),
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                DateWidget(18, 'tue', selectedDate, this.selectDate),
                DateWidget(19, 'wed', selectedDate, this.selectDate),
                DateWidget(20, 'thur', selectedDate, this.selectDate),
                DateWidget(21, 'fri', selectedDate, this.selectDate),
                DateWidget(23, 'mon', selectedDate, this.selectDate),
                DateWidget(24, 'tue', selectedDate, this.selectDate),
                DateWidget(25, 'wed', selectedDate, this.selectDate),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0),
            child: Text(
              'Hagorapt',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Gothic',
                  fontSize: 40.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            height: 215.0,
            margin: EdgeInsets.only(top: 60.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                BarberWidget('Jonathan', selectedBarber, 1, this.selectBarber),
                BarberWidget('Andrew', selectedBarber, 2, this.selectBarber),
                BarberWidget('Tony', selectedBarber, 3, this.selectBarber),
                BarberWidget('Ryan', selectedBarber, 4, this.selectBarber),
                BarberWidget('Tobais', selectedBarber, 5, this.selectBarber),
                BarberWidget('Manny', selectedBarber, 6, this.selectBarber)
              ],
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(top: 60.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                TimeWidget('09:30', selectedTime, this.selectTime),
                TimeWidget('11:00', selectedTime, this.selectTime),
                TimeWidget('12:30', selectedTime, this.selectTime),
                TimeWidget('14:00', selectedTime, this.selectTime),
                TimeWidget('15:30', selectedTime, this.selectTime),
                TimeWidget('17:00', selectedTime, this.selectTime),
                TimeWidget('18:30', selectedTime, this.selectTime),
              ],
            ),
          ),
          Container(
            height: 75,
            width: 400,
            margin: EdgeInsets.only(top: 65.0),
            color: Colors.black,
          )
        ],
      ),
    );
  }

  selectDate(date) {
    setState(() {
      selectedDate = date;
    });
  }

  selectBarber(barber) {
    setState(() {
      selectedBarber = barber;
    });
  }

  selectTime(time) {
    setState(() {
      selectedTime = time;
    });
  }
}
