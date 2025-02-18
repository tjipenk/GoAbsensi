part of 'utils.dart';

Future<bool> isCheckInTimeOri() async {
  int startTime = 7;
  int endTime = 15;

  DateTime ntpTime = await NTP.now();
  int currentTime = ntpTime.hour;

  return currentTime >= startTime && currentTime <= endTime;
}

Future<bool> isCheckOutTimeOri() async {
  int startTime = 16;
  int endTime = 23;

  DateTime ntpTime = await NTP.now();
  int currentTime = ntpTime.hour;

  return currentTime >= startTime && currentTime <= endTime;
}

Future<bool> isCheckInTime() async {
  return true;
}

Future<bool> isCheckOutTime() async {
  return true;
}

String getSystemTime() {
  DateTime currenTime = DateTime.now();

  return DateFormat('hh : mm : ss').format(currenTime);
}

Future<DateTime> pickDate(BuildContext context) async {
  DateTime currentDate = DateTime.now();

  DateTime pickedDate = await showDatePicker(
    context: context,
    initialDate: currentDate,
    currentDate: currentDate,
    firstDate: currentDate.subtract(Duration(days: 365)),
    lastDate: currentDate.add(Duration(days: 365)),
  );

  return pickedDate;
}
