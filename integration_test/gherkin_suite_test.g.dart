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
    testFeature1();
    testFeature2();
  }

  void testFeature0() {
    runFeature(
      'Login Test:',
      <String>[],
      () async {
        runScenario(
          'Validate login with blank input',
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
        );

        runScenario(
          'Validate login with invalid credentials',
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
              'And I enter the username "user123"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter the password "password123"',
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
        );

        runScenario(
          'Validate login with valid credentials',
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
          },
        );
      },
    );
  }

  void testFeature1() {
    runFeature(
      'Adding New Products Test:',
      <String>[],
      () async {
        runScenario(
          'Adding new watches to the product list',
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
              'And I enter watch title "Movado"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter watch description "Sleek Watch"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter watch price "45000"',
              <String>[],
              null,
              dependencies,
            );

            await runStep(
              'And I enter watch image path "https://images-na.ssl-images-amazon.com/images/I/81wGRwNp2VL._UL1500_.jpg"',
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
              'Then I see alert popup with message "Product Added Successfully"',
              <String>[],
              null,
              dependencies,
            );
          },
        );
      },
    );
  }

  void testFeature2() {
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
