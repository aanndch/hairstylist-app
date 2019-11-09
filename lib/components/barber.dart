import 'package:flutter/material.dart';

class BarberWidget extends StatelessWidget {
  BarberWidget(
      this.barber, this.selectedBarber, this.imageNumber, this.selectBarber);

  final barber;
  final selectedBarber;
  final imageNumber;
  final Function selectBarber;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    isSelected = barber == selectedBarber;

    return AnimatedContainer(
        duration: Duration(milliseconds: 500),
        margin: EdgeInsets.only(left: 15.0, right: 15.0),
        curve: Curves.easeIn,
        // color: Colors.yellow,
        child: InkWell(
            onTap: () {
              selectBarber(barber);
            },
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('images/barber-$imageNumber.jpg',
                      height: 200.0,
                      width: 200.0,
                      color: isSelected ? null : Colors.grey,
                      colorBlendMode: isSelected ? null : BlendMode.saturation,
                      fit: BoxFit.fitWidth),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      '$barber',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'OpenSans',
                          fontWeight: isSelected ? FontWeight.bold : null),
                    )),
              ],
            )));
  }
}
