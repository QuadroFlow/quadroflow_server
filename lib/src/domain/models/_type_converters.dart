import 'package:drift/drift.dart';
import 'package:drift_postgres/drift_postgres.dart';

final class UuidTypeConverter extends TypeConverter<String, UuidValue> {
  const UuidTypeConverter();

  @override
  String fromSql(UuidValue fromDb) {
    return fromDb.toString();
  }

  @override
  UuidValue toSql(String value) {
    return UuidValue.fromString(value);
  }
}

final class UriTypeConverter extends TypeConverter<Uri, String> {
  const UriTypeConverter();

  @override
  Uri fromSql(String fromDb) {
    return Uri.parse(fromDb);
  }

  @override
  String toSql(Uri value) {
    return value.toString();
  }
}

final class DateTimeTypeConverter extends TypeConverter<DateTime, PgDateTime> {
  const DateTimeTypeConverter();

  @override
  DateTime fromSql(PgDateTime fromDb) {
    return fromDb.toDateTime();
  }

  @override
  PgDateTime toSql(DateTime value) {
    return PgDateTime(value);
  }
}
