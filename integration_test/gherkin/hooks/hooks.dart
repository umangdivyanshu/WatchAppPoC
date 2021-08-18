//import 'dart:ffi';

import 'package:gherkin/gherkin.dart';

import '../../Utils/json_reader.dart';

// class AttachScreenshotOnFailedStepHook extends Hook {
//   /// Run after a step has executed
//   @override
//   Future<void> onAfterStep(
//       World world, String step, StepResult stepResult) async {
//     if (stepResult.result == StepExecutionResult.fail) {
//       world.attach('Some info.', 'text/plain');
//       world.attach('{"some", "JSON"}}', 'application/json');
//     }
//   }
// }

// class ParseResponseJson extends Hook {
//   // Run after all scenarios in a test run have completed
//   @override
//   Future<void> onAfterRun(TestConfiguration config) async {
//     print("In After Run Hook block");
//     JsonReader.parseResponseJson();
//   }
// }
