import './login_test.dart' as loginTest;
import './addwatches_test.dart' as addWatches;
import './cart_test.dart' as addToCart;
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding binding =
  IntegrationTestWidgetsFlutterBinding.ensureInitialized() as IntegrationTestWidgetsFlutterBinding;
  binding.ensureVisualUpdate();
  loginTest.main();
  addWatches.main();
  addToCart.main();
}