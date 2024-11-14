import 'package:mobx/mobx.dart';
part 'home_page_controller.g.dart';

class HomeController = _HomePageControllerBase with _$HomeController;

abstract class _HomePageControllerBase with Store {
  @observable
  int counter = 0;

  @action
  void increment() {
    counter++;
  }
}
