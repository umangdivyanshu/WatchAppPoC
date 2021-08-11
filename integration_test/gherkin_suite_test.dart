import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';

// The application under test.
import 'package:pocwatchapp/main.dart' as app;

import 'gherkin/steps/add_product_to_cart.dart';
import 'gherkin/steps/app_running_fine.dart';
import 'gherkin/steps/enter_password.dart';
import 'gherkin/steps/enter_username.dart';
import 'gherkin/steps/enter_watch_description.dart';
import 'gherkin/steps/enter_watch_image_path.dart';
import 'gherkin/steps/enter_watch_price.dart';
import 'gherkin/steps/enter_watch_title.dart';
import 'gherkin/steps/error_messages_for_blank_input.dart';
import 'gherkin/steps/error_messages_for_invalid_input.dart';
import 'gherkin/steps/see_alert_popup.dart';
import 'gherkin/steps/see_cart_page.dart';
import 'gherkin/steps/see_form_to_add_watches.dart';
import 'gherkin/steps/see_login_screen.dart';
import 'gherkin/steps/successfully_login.dart';
import 'gherkin/steps/tap_add_icon.dart';
import 'gherkin/steps/tap_cart_icon.dart';
import 'gherkin/steps/tap_next_button.dart';
import 'gherkin/steps/tap_on_login_button.dart';
import 'gherkin/steps/tap_remove_from_cart_button.dart';
import 'gherkin/steps/tap_save_button.dart';
import 'gherkin/steps/validate_cart_is_empty.dart';

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
        // JsonReporter(
        //   writeReport: (_, __) => Future<void>.value(),
        //),
        JsonReporter(path: './report/report.json')
      ]
      ..hooks = [AttachScreenshotOnFailedStepHook()],
    (World world) => app.main(),
  );
}
