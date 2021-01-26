import 'package:flutter/material.dart';

const kTexfieldDecoration = InputDecoration(
  hintText: 'Search here...',
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
  ),
);
const kTextStyle = TextStyle(
  fontSize: 18.0,
);

// Container(
//   height: 300.0,
//   width: 400.0,
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: <Widget>[
//       Text(
//         'Time Zones:',
//         style: TextStyle(
//           fontSize: 18.0,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Expanded(
//             child: Container(
//               height: 250.0,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: [
//                   Text(
//                     'Eastern Time:',
//                     style: kTextStyle,
//                   ),
//                   Text(
//                     'Central Time:',
//                     style: kTextStyle,
//                   ),
//                   Text(
//                     'Mountain Time:',
//                     style: kTextStyle,
//                   ),
//                   Text(
//                     'Pacific Time:',
//                     style: kTextStyle,
//                   ),
//                   Text(
//                     'Alaska Time:',
//                     style: kTextStyle,
//                   ),
//                   Text(
//                     'Hawaii Time:',
//                     style: kTextStyle,
//                   ),
//                   Text(
//                     'Atlantic Time:',
//                     style: kTextStyle,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 20.0,
//           ),
//           Expanded(
//             child: Container(
//               height: 250.0,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     '7:00 PM EST',
//                     style: kTextStyle,
//                   ),
//                   Text(
//                     '12:00 PM CST',
//                     style: kTextStyle,
//                   ),
//                   Text(
//                     '7:00 PM MST',
//                     style: kTextStyle,
//                   ),
//                   Text(
//                     '7:00 PM PST',
//                     style: kTextStyle,
//                   ),
//                   Text(
//                     '7:00 PM AST',
//                     style: kTextStyle,
//                   ),
//                   Text(
//                     '7:00 PM HST',
//                     style: kTextStyle,
//                   ),
//                   Text(
//                     '7:00 PM ATST',
//                     style: kTextStyle,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     ],
//   ),
// ),

//void getCurrentTime() {
//   setState(() {
//     cityAbbr = cityAbbrValue;
//     for (var state in stateSource.listOfStates) {
//       if ('$cityAbbr' == state.stateAbbr) {
//         stateName = state.stateName;
//         print(stateName);
//       }
//     }
//     timeZone = curDateTimeByZone(zone: '$timeZoneValue');
//     currentTime = DateTime.now();
//     selectedTimeZone =
//         formatTime(time: timeZone, is24hr: false, format: "HHMMSS");
//     stringTimeNow =
//         formatTime(time: currentTime, is24hr: false, format: "HHMMSS");
//   });
// }
