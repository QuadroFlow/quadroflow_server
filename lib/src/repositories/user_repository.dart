import 'package:quadroflow/config/database/drift_database.dart';
import 'package:quadroflow_core/quadroflow_core.dart';
import 'package:vaden/vaden.dart';

abstract class UserRepository {
  const UserRepository();

  Future<UserEntity?> getById(String id);
  Future<UserEntity?> getByEmail(String email);
}

@Repository()
final class UserRepositoryImpl implements UserRepository {
  const UserRepositoryImpl(this._database);

  final DriftAppDatabase _database;

  @override
  Future<UserEntity?> getById(String id) async {
    final user = await _database.managers.userModel
        .filter((model) => model.id(id))
        .getSingleOrNull();

    return user;
  }

  @override
  Future<UserEntity?> getByEmail(String email) async {
    final user = await _database.managers.userModel
        .filter((model) => model.email(email))
        .getSingleOrNull();

    return user;
  }
}
