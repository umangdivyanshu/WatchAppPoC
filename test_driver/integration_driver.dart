//import 'package:integration_test/integration_test_driver.dart';
import 'package:integration_test/integration_test_driver.dart'
    as integration_test_driver;

//Future<void> main() => integrationDriver();
Future<void> main() {
  // Flutter Driver logs all messages to stderr by default so if this is run on a build server
  // the process will fail due to writing errors. So handle this yourself for now
  //driverLog = logDriverMessages;
  // The Gherkin report data send back to this runner by the app after
  // the tests have run will be saved to this directory
  integration_test_driver.testOutputsDirectory =
      'integration_test/gherkin/reports';

  return integration_test_driver.integrationDriver(
    timeout: const Duration(minutes: 90),
  );
}
