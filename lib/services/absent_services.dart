part of 'services.dart';

class AbsentServices {
  static CollectionReference _absentCollection =
      FirebaseFirestore.instance.collection('absents');
  static DatabaseReference absentDatabase =
      FirebaseDatabase.instance.reference().child('absents');

  static Future<void> storeAbsentCollection(Absent absent) async {
    await _absentCollection.doc().set({
      'userID': absent.userID,
      'userName': absent.userName,
      'userPhoto': absent.userPhoto,
      'absentTime': absent.absentTime,
      'absentType': absent.absentType,
      'coordinate': absent.coordinate,
      'jenis': absent.jenis,
    });
    // save to apipplh
    // var client = http.Client();
    // try {
    //   await client.post(
    //       Uri.parse(
    //         "https://apipplh.alvin.web.id/presensis/",
    //       ),
    //       headers: <String, String>{
    //         'Context-Type': 'application/json; charset=UTF-8',
    //       },
    //       body: <String, String>{
    //         'userid': absent.userID,
    //         'username': absent.userName,
    //         //'userphoto': absent.userPhoto,
    //         'absenttime':
    //             DateFormat("yyyy-MM-dd hh:mm:ss").format(absent.absentTime),
    //         'absenttype': absent.absentType,
    //         'coordinate': jsonEncode(absent.coordinate),
    //         'jenis': absent.jenis,
    //       });
    // } finally {
    //   client.close();
    // }

    // var client = http.Client();
    // try {
    //   await client.post(
    //       Uri.parse(
    //         "https://apipplh.alvin.web.id/apis/",
    //       ),
    //       headers: <String, String>{
    //         'Context-Type': 'application/json; charset=UTF-8',
    //       },
    //       body: <String, String>{
    //         'name': absent.userName,
    //         'email': absent.absentType,
    //         'password': jsonEncode(absent.coordinate),
    //       });
    // } finally {
    //   client.close();
    // }
  }

  static Future<void> storeAbsentDatabase(Absent absent) async {
    await absentDatabase.child(absent.userID).set({
      'userID': absent.userID,
      'userName': absent.userName,
      'userPhoto': absent.userPhoto,
      'absentTime': absent.absentTime.millisecondsSinceEpoch,
      'absentType': absent.absentType,
      'coordinate': absent.coordinate,
      'jenis': absent.jenis,
    });
  }

  static Future<void> removeAbsentDatabase(String userID) async {
    await absentDatabase.child(userID).remove();
  }
}
