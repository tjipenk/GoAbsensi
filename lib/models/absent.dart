part of 'models.dart';

class Absent extends Equatable {
  final String userID;
  final String userName;
  final String userPhoto;
  final DateTime absentTime;
  final String absentType;
  final List<String> coordinate;

  Absent({
    @required this.userID,
    @required this.userName,
    @required this.userPhoto,
    @required this.absentTime,
    @required this.absentType,
    @required this.coordinate,
  });

  @override
  List<Object> get props =>
      [userID, userName, userPhoto, absentTime, absentType, coordinate];
}
