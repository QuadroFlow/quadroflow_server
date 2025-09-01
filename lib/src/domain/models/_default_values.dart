import 'package:drift_postgres/drift_postgres.dart';

PgDateTime currentDateTime() => PgDateTime(DateTime.now().toUtc());
