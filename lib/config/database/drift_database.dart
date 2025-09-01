import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:quadroflow/config/database/drift_database.steps.dart';
import 'package:quadroflow/src/domain/models/_default_values.dart';
import 'package:quadroflow/src/domain/models/_type_converters.dart';
import 'package:quadroflow/src/domain/models/user_model.dart';
import 'package:quadroflow/src/utils/file_util.dart';
import 'package:quadroflow_core/quadroflow_core.dart';

part 'drift_database.g.dart';

@DriftDatabase(tables: [UserModel])
final class DriftAppDatabase extends _$DriftAppDatabase {
  DriftAppDatabase(super.e);

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onUpgrade: stepByStep(
        from0To1: (m, schema) async {
          await m.createTable(schema.users);
        },
      ),
    );
  }

  Future<void> populate() async {
    final (_, truncates) = await FileUtil.readAsString('data/truncates.sql');
    final (_, data) = await FileUtil.readAsString('data/data.sql');

    await customStatement(truncates);
    await customStatement(data);
  }
}
