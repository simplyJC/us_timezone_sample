import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:instant/instant.dart';
import 'package:us_timezone/model/states_source.dart';

StateSource stateSource = StateSource();

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var timeZone;
  String timeZoneValue;
  var currentTime;
  String selectedTimeZone;
  String stringTimeNow;
  String stateName;
  String cityAbbr;
  String cityAbbrValue;

  // @override
  // void initState() {
  //   // newYorkString = newYork.toString();
  //   stringTimeNow =
  //       formatTime(time: currentTime, is24hr: false, format: "HHMMSS");
  //   selectedTimeZone =
  //       formatTime(time: newYork, is24hr: false, format: "HHMMSS");

  //   // Timer.periodic(Duration(seconds: 1), (Timer t) => getCurrentTime());
  //   // print(formatTime(time: newYork, is24hr: false, format: "HHMMSS"));
  //   super.initState();
  // }
  @override
  void initState() {
    timeZoneValue = 'HST';
    stateName = 'CityName';
    timeZone = curDateTimeByZone(zone: '$timeZoneValue');
    currentTime = DateTime.now();
    selectedTimeZone =
        formatTime(time: timeZone, is24hr: false, format: "HHMMSS");
    stringTimeNow =
        formatTime(time: currentTime, is24hr: false, format: "HHMMSS");
    super.initState();
  }

  void getTime() {
    setState(() {
      cityAbbr = cityAbbrValue;
      for (var state in stateSource.listOfStates) {
        if ('$cityAbbr' == state.stateAbbr) {
          stateName = state.stateName;
          timeZoneValue = state.stateTimeZone;
          print(stateName);
        }
      }

      timeZone = curDateTimeByZone(zone: '$timeZoneValue');
      currentTime = DateTime.now();
      selectedTimeZone =
          formatTime(time: timeZone, is24hr: false, format: "HHMMSS");
      if (timeZoneValue == 'PDT') {
        timeZoneValue = 'MST';
      } else {
        timeZoneValue = timeZoneValue;
      }
      stringTimeNow =
          formatTime(time: currentTime, is24hr: false, format: "HHMMSS");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('US TIME ZONES')),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: kTexfieldDecoration,
              onChanged: (value) {
                cityAbbrValue = value.toUpperCase();
                print(cityAbbrValue);
                getTime();
              },
            ),
          ),
          Flexible(
            child: Container(
              height: 400.0,
              width: 400,
              decoration: BoxDecoration(
                  color: Color(0xFF5C5757),
                  borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Current TimeZone Selected:',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00E7F2),
                    ),
                  ),
                  Text(
                    "$stateName $timeZoneValue",
                    style: kTextStyleLabel,
                  ),
                  Text(
                    '$selectedTimeZone',
                    style: kTextStyle,
                  ),
                  Text(
                    'Current Time:',
                    style: kTextStyleLabel,
                  ),
                  Text(
                    "$stringTimeNow",
                    style: kTextStyle,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      getTime();
                    },
                    child: Text('Refresh'),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
