import 'package:quadroflow/src/domain/entities/settings_entity.dart';
import 'package:vaden/vaden.dart';

@Configuration()
final class ResourceConfig {
  const ResourceConfig();

  @Bean()
  ResourceService resource(SettingsEntity settings) {
    final resource = settings.resource;
    return ResourceService(
      fileSystemPath: resource.folder.toString(),
      defaultDocument: resource.defaultFile.toString(),
    );
  }
}
