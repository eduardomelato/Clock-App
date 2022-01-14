import 'package:flutter/material.dart';


import 'clock.dart';
import 'country_card.dart';
import 'time_in_hour_and_minute.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Bauru, SP",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Spacer(),
            Clock(),
            Spacer(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CountryCard(
                    country: "Nova Iorque, USA",
                    timeZone: "-5 HR | GMT",
                    iconSrc: "assets/icons/Liberty.svg",
                    time: (TimeOfDay.now().hour-2).toString() + ":" + TimeOfDay.now().minute.toString(),
                    period: "PM",
                  ),
                  CountryCard(
                    country: "Sidney, AU",
                    timeZone: "+11 HR | GMT",
                    iconSrc: "assets/icons/Sydney.svg",
                    time: (TimeOfDay.now().hour+14-24).toString() + ":" + TimeOfDay.now().minute.toString(),
                    period: "AM",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
