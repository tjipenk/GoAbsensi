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
