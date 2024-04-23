import 'package:multiple_result/multiple_result.dart';
import 'package:up_todo/Core/Models/Failure/user_error_model.dart';
import 'package:up_todo/Core/Models/user_firestore_model.dart';

abstract class IHomeRepository {
  Future<Result<UserFirestoreModel, UserErrorModel>?> getUserInformation();
}
