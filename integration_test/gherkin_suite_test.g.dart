// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gherkin_suite_test.dart';

// **************************************************************************
// GherkinSuiteTestGenerator
// **************************************************************************

class _CustomGherkinIntegrationTestRunner extends GherkinIntegrationTestRunner {
  _CustomGherkinIntegrationTestRunner(
    TestConfiguration configuration,
    void Function(World) appMainFunction,
  ) : super(configuration, appMainFunction);

  @override
  void onRun() {
    testFeature0();
    // testFeature1();
    // testFeature2();
  }

  void testFeature0() {
    runFeature(
      'Add/Remove From Cart Test:',
      <String>[],
      () async {
        runScenario(
          'Adding and removing products from the cart',
          <String>[],
          (TestDependencies dependencies) async {
            await runStep(
              'Given the app is running fine',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I tap the Next button',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I see the login screen',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter the username "user"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter the password "password"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I tap on login button',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I successfully login to see homescreen',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I add product at index 3 to the cart',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I tap on cart icon',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I see cart page',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I tap on Remove from Cart button',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I validate cart is empty',
              <String>[],
              null,
              dependencies,
            );
          },
        );
      },
    );
  }
}

void executeTestSuite(
  TestConfiguration configuration,
  void Function(World) appMainFunction,
) {
  _CustomGherkinIntegrationTestRunner(configuration, appMainFunction).run();
}
