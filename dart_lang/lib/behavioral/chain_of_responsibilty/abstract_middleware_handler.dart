
import 'package:Strategy_design/behavioral/chain_of_responsibilty/middleware_handler.dart';
import 'package:Strategy_design/behavioral/chain_of_responsibilty/model/request_model.dart';

class AbstractMidlleWareHandler implements MiddleWareHandler {
  MiddleWareHandler? nextHandler;

  @override
  MiddleWareHandler setNex(MiddleWareHandler handler) {
    nextHandler = handler;
    return handler;
  }

  @override
  bool handle(REquest request) {
    if (nextHandler != null) {
      nextHandler!.handle(request);
    }
    return true;
  }
}
