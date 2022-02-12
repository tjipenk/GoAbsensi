part of 'services.dart';

class HistoryServices {
  static CollectionReference _historyCollection =
      FirebaseFirestore.instance.collection('histories');

  static Future<List<History>> getHistory(String userID) async {
    QuerySnapshot snapshot = await _historyCollection.get();

    var documents =
        snapshot.docs.where((document) => document.data()['userID'] == userID);

    List<History> histories = [];

    for (var document in documents) {
      histories.add(
        History(
          userID: document.data()['userID'],
          userName: document.data()['userName'],
          userPhoto: document.data()['userPhoto'],
          jenisAbsen: document.data()['jenisAbsen'],
          absentCheckIn: document.data()['absentCheckIn'],
          absentCheckMid: document.data()['absentCheckMid'],
          absentCheckOut: document.data()['absentCheckOut'],
        ),
      );
    }

    return histories;
  }

  static Future<void> storeHistory(History history) async {
    await _historyCollection.doc(history.absentCheckIn.toString()).set({
      'userID': history.userID,
      'userName': history.userName,
      'userPhoto': history.userPhoto,
      'jenisAbsen': history.jenisAbsen,
      'absentCheckIn': history.absentCheckIn,
      'absentCheckMid': history.absentCheckMid,
      'absentCheckOut': history.absentCheckOut,
    });
  }

  static Future<void> updateHistory(History history) async {
    await _historyCollection.doc(history.absentCheckIn.toString()).set({
      'userID': history.userID,
      'userName': history.userName,
      'userPhoto': history.userPhoto,
      'jenisAbsen': history.jenisAbsen,
      'absentCheckIn': history.absentCheckIn,
      'absentCheckMid': history.absentCheckMid,
      'absentCheckOut': history.absentCheckOut,
    });
  }
}
