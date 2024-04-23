import 'package:cloud_firestore/cloud_firestore.dart';

import '../Cache/cach_manager.dart';
import '../Core/Models/user_firestore_model.dart';

class HomeService {
  final _cacheManager = CacheManager();
  final _firebaseDB = FirebaseFirestore.instance;

  Future<UserFirestoreModel?> getUserInformation() async {
    final userToken = await _cacheManager.readString(key: 'token');
    final response = await _firebaseDB.collection('users').doc(userToken).withConverter(
      fromFirestore: (snapshot, options) {
        return UserFirestoreModel.fromJson(snapshot.data()!);
      },
      toFirestore: (value, options) {
        return value.toJson();
      },
    ).get();
    return response.data();
  }
}
