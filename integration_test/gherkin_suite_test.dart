import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';

// The application under test.
import 'package:pocwatchapp/main.dart' as app;

import 'gherkin/steps/app_running_fine.dart';
import 'gherkin/steps/enter_password.dart';
import 'gherkin/steps/enter_username.dart';
import 'gherkin/steps/error_messages_for_blank_input.dart';
import 'gherkin/steps/error_messages_for_invalid_input.dart';
import 'gherkin/steps/see_login_screen.dart';
import 'gherkin/steps/successfully_login.dart';
import 'gherkin/steps/tap_next_button.dart';
import 'gherkin/steps/tap_on_login_button.dart';

part 'gherkin_suite_test.g.dart';

@GherkinTestSuite()
void main() {
  executeTestSuite(
    FlutterTestConfiguration.DEFAULT([
      givenAppIsRunningFine,
      whenITapNextButton,
      thenISeeLoginScreen,
      whenITapLoginButton,
      thenISeeErrorMessageForBlankInput,
      andIEnterUsername,
      andIEnterPassword,
      thenISeeErrorMessageForInvalidInput,
      thenISuccessfullyLoginToHomescreen,
    ])
      ..reporters = [
        StdoutReporter(MessageLevel.error)
          ..setWriteLineFn(print)
          ..setWriteFn(print),
        ProgressReporter()
          ..setWriteLineFn(print)
          ..setWriteFn(print),
        TestRunSummaryReporter()
          ..setWriteLineFn(print)
          ..setWriteFn(print),
        JsonReporter(
          writeReport: (_, __) => Future<void>.value(),
        ),
      ],
    (World world) => app.main(),
  );
}
