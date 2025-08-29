// ignore_for_file: avoid_print

import 'package:quadroflow/vaden_application.dart';

Future<void> main(List<String> args) async {
  final vaden = VadenApp();

  await vaden.setup();
  final server = await vaden.run(args);

  print('Server listening on port ${server.port}');
}
