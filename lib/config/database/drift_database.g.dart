// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_database.dart';

// ignore_for_file: type=lint
abstract class _$DriftAppDatabase extends GeneratedDatabase {
  _$DriftAppDatabase(QueryExecutor e) : super(e);
  $DriftAppDatabaseManager get managers => $DriftAppDatabaseManager(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

class $DriftAppDatabaseManager {
  final _$DriftAppDatabase _db;
  $DriftAppDatabaseManager(this._db);
}
