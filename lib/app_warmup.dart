import 'package:quadroflow/config/database/drift_database.dart';
import 'package:quadroflow/src/domain/entities/app_env_entity.dart';
import 'package:quadroflow/src/domain/enums/app_mode_enum.dart';
import 'package:vaden/vaden.dart';

@Component()
class AppWarmUp implements ApplicationRunner {
  const AppWarmUp(this._database, this._environment);

  final DriftAppDatabase _database;
  final AppEnvironmentEntity _environment;

  @override
  Future<void> run(VadenApplication app) async {
    if (_environment.mode == AppModeEnumEntity.debug) {
      await _database.populate();
    }
  }
}
