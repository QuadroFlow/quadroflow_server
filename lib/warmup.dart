import 'package:quadroflow/config/database/drift_database.dart';
import 'package:quadroflow/src/domain/entities/environment_entity.dart';
import 'package:quadroflow/src/domain/enums/mode_enum.dart';
import 'package:vaden/vaden.dart';

@Component()
class WarmUp implements ApplicationRunner {
  const WarmUp(this._database, this._environment);

  final DriftAppDatabase _database;
  final EnvironmentEntity _environment;

  @override
  Future<void> run(VadenApplication app) async {
    if (_environment.mode == ModeEnumEntity.debug) {
      await _database.populate();
    }
  }
}
