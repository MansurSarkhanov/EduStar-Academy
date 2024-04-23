import 'package:multiple_result/src/result.dart';
import 'package:up_todo/Core/Models/Failure/user_error_model.dart';
import 'package:up_todo/Core/Models/user_firestore_model.dart';

import '../../Service/home_service.dart';
import '../Contrators/home_repository.dart';

class ImplHomeRepository implements IHomeRepository {
  final _homeService = HomeService();
  @override
  Future<Result<UserFirestoreModel, UserErrorModel>?> getUserInformation() async {
    try {
      final result = await _homeService.getUserInformation();
      return Success(result!);
    } catch (e) {
      return Error(UserErrorModel(message: e.toString()));
    }
  }
}
