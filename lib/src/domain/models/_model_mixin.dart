import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';
import 'package:quadroflow/src/domain/models/_default_values.dart';
import 'package:quadroflow/src/domain/models/_type_converters.dart';

mixin ModelMixin on Table {
  UuidColumn get id => customType(
    PgTypes.uuid,
  ).map(const UuidTypeConverter()).withDefault(genRandomUuid())();

  Column<PgDateTime> get createdAt => customType(
    PgTypes.timestampNoTimezone,
  ).map(const DateTimeTypeConverter()).clientDefault(currentDateTime)();

  Column<PgDateTime> get updatedAt => customType(
    PgTypes.timestampNoTimezone,
  ).map(const DateTimeTypeConverter()).clientDefault(currentDateTime)();

  Column<PgDateTime> get deletedAt => customType(
    PgTypes.timestampNoTimezone,
  ).map(const DateTimeTypeConverter()).nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
