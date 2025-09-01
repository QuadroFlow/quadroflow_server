import 'package:vaden/vaden.dart';

@Controller('/')
final class ResourceController {
  const ResourceController(this._service);

  final ResourceService _service;

  @Mount('/')
  ResourceService get resource => _service;
}
