import 'package:vaden/vaden.dart';

@Api(tag: 'Hello', description: 'Hello Controller')
@Controller('/hello')
class HelloController {
  const HelloController();

  @Get('/ping')
  String ping() {
    return 'pong';
  }
}
