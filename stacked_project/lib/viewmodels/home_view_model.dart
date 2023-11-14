import 'package:stacked/stacked.dart';
import 'package:stacked_project/app/app.locator.dart';
import 'package:stacked_project/services/counter_service.dart';

class HomeViewModel extends BaseViewModel {
  final counterService = locator<CounterService>();
}
