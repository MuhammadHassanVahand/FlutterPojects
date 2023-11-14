import 'package:stacked/stacked.dart';
import 'package:stacked_project/app/app.locator.dart';
import 'package:stacked_project/app/app.router.dart';
import 'package:stacked_project/services/counter_service.dart';
import 'package:stacked_services/stacked_services.dart';

class CounterViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  final counterService = locator<CounterService>();

  addValue() {
    counterService.addCounterValue();
    rebuildUi();
  }

  navigateToHome() {
    navigationService.navigateToHomeView();
  }
}
