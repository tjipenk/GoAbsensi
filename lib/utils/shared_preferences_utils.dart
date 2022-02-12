part of 'utils.dart';

Future<String> getAbsentStatus() async {
  final prefs = await SharedPreferences.getInstance();

  return prefs.getString('absentStatus');
}

Future<bool> setAbsentStatus(String value) async {
  final prefs = await SharedPreferences.getInstance();

  return prefs.setString('absentStatus', value);
}

Future<bool> setAbsentJenis(String value) async {
  final prefs = await SharedPreferences.getInstance();

  return prefs.setString('absentJenis', value);
}

Future<String> getAbsentJenis() async {
  final prefs = await SharedPreferences.getInstance();

  return prefs.getString('absentJenis');
}

Future<String> getTimeIN() async {
  final prefs = await SharedPreferences.getInstance();

  return prefs.getString('timeIN');
}

Future<bool> setTimeIN(String value) async {
  final prefs = await SharedPreferences.getInstance();

  return prefs.setString('timeIN', value);
}

Future<String> getTimeMID() async {
  final prefs = await SharedPreferences.getInstance();

  return prefs.getString('timeMID');
}

Future<bool> setTimeMID(String value) async {
  final prefs = await SharedPreferences.getInstance();

  return prefs.setString('timeMID', value);
}

Future<String> getTimeOUT() async {
  final prefs = await SharedPreferences.getInstance();

  return prefs.getString('timeOUT');
}

Future<bool> setTimeOUT(String value) async {
  final prefs = await SharedPreferences.getInstance();

  return prefs.setString('timeOUT', value);
}
