import 'package:drift/drift.dart';
import 'package:quadroflow/src/domain/models/_model_mixin.dart';
import 'package:quadroflow/src/domain/models/_type_converters.dart';
import 'package:quadroflow_core/quadroflow_core.dart';

@UseRowClass(UserEntity)
class UserModel extends Table with ModelMixin {
  const UserModel();

  @override
  String? get tableName => 'users';

  TextColumn get name => text()();
  TextColumn get email => text().unique()();
  TextColumn get password => text()();
  TextColumn get role => textEnum<UserRoleEnum>()();
  TextColumn get picture => text().map(const UriTypeConverter()).nullable()();
}
