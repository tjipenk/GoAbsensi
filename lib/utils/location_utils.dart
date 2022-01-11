part of 'utils.dart';

Future<List<String>> getPosition() async {
  Position position =
      await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

  return [position.latitude.toString(), position.longitude.toString()];
}

Future<bool> isFakeGPS() async {
  await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

  bool isMockLocation = await TrustLocation.isMockLocation;

  return isMockLocation;
}

Future<bool> onRadiusDistance() async {
  Position position =
      await getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

  double startLatPoint = -6.5220;
  double startLongPoint = 106.6268;

  double endLatPoint = -6.5962;
  double endLongPoint = 106.8252;

  bool onLatRadius =
      position.latitude <= startLatPoint && position.latitude >= endLatPoint;
  bool onLongRadius = position.longitude >= startLongPoint &&
      position.longitude <= endLongPoint;

  print(position.latitude.toString() + ', ' + position.longitude.toString());

  return onLatRadius && onLongRadius;
}
