// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gherkin_suite_test.dart';

// **************************************************************************
// GherkinSuiteTestGenerator
// **************************************************************************

class _CustomGherkinIntegrationTestRunner extends GherkinIntegrationTestRunner {
  _CustomGherkinIntegrationTestRunner(
    TestConfiguration configuration,
    Future<void> Function(World) appMainFunction,
  ) : super(configuration, appMainFunction);

  @override
  void onRun() {
    testFeature0();
    testFeature1();
    testFeature2();
  }

  void testFeature0() {
    runFeature(
      'Adding New Products Test:',
      <String>['@addProduct'],
      () {
        runScenario(
          'Adding and removing products from the cart',
          <String>['@cartTest'],
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
              'And I enter the username \'user1\'',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter the password \'password1\'',
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
          onBefore: () async => onBeforeRunFeature(
            'Adding New Products Test',
            <String>['@addProduct'],
          ),
          onAfter: () async => onAfterRunFeature(
            'Adding New Products Test',
          ),
        );
      },
    );
  }

  void testFeature1() {
    runFeature(
      'Login Test:',
      <String>['@loginTest'],
      () {
        runScenario(
          'Validate login with blank input',
          <String>['@loginTest'],
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
              'When I tap on login button',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I see error messages for blank input',
              <String>[],
              null,
              dependencies,
            );
          },
          onBefore: () async => onBeforeRunFeature(
            'Login Test',
            <String>['@loginTest'],
          ),
          onAfter: null,
        );

        runScenario(
          'Validate login with invalid credentials',
          <String>['@loginTest'],
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
              'And I enter the username \'user123\'',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter the password \'password123\'',
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
              'Then I see error messages for invalid input',
              <String>[],
              null,
              dependencies,
            );
          },
          onBefore: null,
          onAfter: null,
        );

        runScenario(
          'Validate login with valid credentials',
          <String>['@loginTest'],
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
              'And I enter the username \'user\'',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter the password \'password\'',
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
          },
          onBefore: null,
          onAfter: () async => onAfterRunFeature(
            'Login Test',
          ),
        );
      },
    );
  }

  void testFeature2() {
    runFeature(
      'Add/Remove From Cart Test:',
      <String>['@cartTest'],
      () {
        runScenario(
          'Adding and removing products from the cart',
          <String>['@cartTest'],
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
              'And I enter the username \'user1\'',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter the password \'password1\'',
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
          onBefore: () async => onBeforeRunFeature(
            'Add/Remove From Cart Test',
            <String>['@cartTest'],
          ),
          onAfter: () async => onAfterRunFeature(
            'Add/Remove From Cart Test',
          ),
        );
      },
    );
  }
}

void executeTestSuite(
  TestConfiguration configuration,
  Future<void> Function(World) appMainFunction,
) {
  _CustomGherkinIntegrationTestRunner(configuration, appMainFunction).run();
}
