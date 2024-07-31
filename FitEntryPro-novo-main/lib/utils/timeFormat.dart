import 'package:flutter/material.dart';

String fromTimeOfDay(TimeOfDay time) {
  return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
}

TimeOfDay toTimeOfDay(String time) {
  final timeList = time.split(':');
  return TimeOfDay(
    hour: int.parse(timeList[0]),
    minute: int.parse(timeList[1]),
  );
}
