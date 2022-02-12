part of 'models.dart';

class History extends Equatable {
  final String userID;
  final String userName;
  final String userPhoto;
  final String jenisAbsen;
  final int absentCheckIn;
  final int absentCheckMid;
  final int absentCheckOut;

  History({
    this.userID,
    this.userName,
    this.userPhoto,
    this.jenisAbsen,
    this.absentCheckIn,
    this.absentCheckMid,
    this.absentCheckOut,
  });

  History copyWithMid({int absentCheckMid}) => History(
        userID: this.userID,
        userName: this.userName,
        userPhoto: this.userPhoto,
        jenisAbsen: this.jenisAbsen,
        absentCheckIn: this.absentCheckIn,
        absentCheckMid: absentCheckMid,
      );

  History copyWith({int absentCheckOut}) => History(
        userID: this.userID,
        userName: this.userName,
        userPhoto: this.userPhoto,
        jenisAbsen: this.jenisAbsen,
        absentCheckIn: this.absentCheckIn,
        absentCheckOut: absentCheckOut,
      );

  @override
  List<Object> get props => [
        userID,
        userName,
        userPhoto,
        jenisAbsen,
        absentCheckIn,
        absentCheckMid,
        absentCheckOut,
      ];
}
