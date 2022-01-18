import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';

// The application under test.
import 'package:pocwatchapp/main.dart' as app;

import 'gherkin/hooks/hooks.dart';
import 'gherkin/steps/steps_add_watch_page.dart';
import 'gherkin/steps/steps_cart_page.dart';
import 'gherkin/steps/steps_login_page.dart';
import 'gherkin/steps/steps_product_listing_page.dart';
import 'gherkin/steps/steps_welcome_page.dart';

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
      thenIAddProductToCart,
      whenITapCartIcon,
      thenISeeCartPage,
      whenITapRemoveFromCartButton,
      thenIValidateCartIsEmpty,
      whenITapAddIcon,
      thenISeeFormToAddWatches,
      andIEnterWatchTitle,
      andIEnterWatchDescription,
      andIEnterWatchPrice,
      andIEnterWatchImagePath,
      whenITapSaveButton,
      theISeeAlertPopupWithMessage,
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
        JsonReporter(path: './report/jsonreport.json')
      ]
      ..hooks = [AttachScreenshotOnFailedStepHook()],
    (World world) => app.main(),
  );
}
