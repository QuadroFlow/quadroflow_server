import 'dart:convert';

import 'package:drift_postgres/drift_postgres.dart';
import 'package:postgres/postgres.dart';
import 'package:quadroflow/config/database/drift_database.dart';
import 'package:quadroflow/src/domain/entities/app_env_entity.dart';
import 'package:vaden/vaden.dart';

@Configuration()
final class DriftConfig {
  const DriftConfig();

  @Bean()
  DriftAppDatabase open(AppEnvironmentEntity env) {
    final settings = ConnectionSettings(
      encoding: utf8,
      timeZone: 'UTC',
      applicationName: 'quadroflow',
      sslMode: _sslAdapter(env.db.ssl),
    );

    final endpoint = Endpoint(
      host: env.db.host,
      port: env.db.port,
      database: env.db.database,
      username: env.db.username,
      password: env.db.password,
    );

    final executor = PgDatabase(
      settings: settings,
      endpoint: endpoint,
      logStatements: true,
    );

    return DriftAppDatabase(executor);
  }

  SslMode _sslAdapter(String? ssl) {
    return switch (ssl) {
      'disable' => SslMode.disable,
      'require' => SslMode.require,
      'verifyFull' => SslMode.verifyFull,
      _ => SslMode.disable,
    };
  }
}
