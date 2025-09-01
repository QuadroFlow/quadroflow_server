import 'package:drift/drift.dart';

part 'drift_database.g.dart';

@DriftDatabase(tables: [])
final class DriftAppDatabase extends _$DriftAppDatabase {
  DriftAppDatabase(super.e);

  @override
  int get schemaVersion => 0;
}
