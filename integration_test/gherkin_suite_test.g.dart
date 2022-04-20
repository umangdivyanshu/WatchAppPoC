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
      'Login Test:',
      <String>[],
      () {
        runScenario(
          'Validate login with blank input',
          <String>['@login'],
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
            <String>[],
          ),
          onAfter: null,
        );

        runScenario(
          'Validate login with invalid credentials',
          <String>['@login'],
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
          <String>['@login'],
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

  void testFeature1() {
    runFeature(
      'Adding New Products Test:',
      <String>[],
      () {
        runScenario(
          'Adding new watches to the product list',
          <String>['@addWatch'],
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
              'When I tap on Add icon',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I see the form to add watches',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter watch title \'Hublot\'',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter watch description \'Performance Watch\'',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter watch price \'115000\'',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter watch image path \'https://images-na.ssl-images-amazon.com/images/I/81wGRwNp2VL._UL1500_.jpg\'',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'When I tap on Save button',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'Then I see alert popup with message \'Product Added Successfully\'',
              <String>[],
              null,
              dependencies,
            );
          },
          onBefore: () async => onBeforeRunFeature(
            'Adding New Products Test',
            <String>[],
          ),
          onAfter: () async => onAfterRunFeature(
            'Adding New Products Test',
          ),
        );
      },
    );
  }

  void testFeature2() {
    runFeature(
      'Add/Remove From Cart Test:',
      <String>[],
      () {
        runScenario(
          'Adding and removing products from the cart',
          <String>['@addToCart'],
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
            <String>[],
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
