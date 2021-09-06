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
    //testFeature0();
    testFeature1();
    //testFeature2();
  }

  void testFeature1() {
    runFeature(
      'Login Test:',
      <String>['@loginTest'],
      () async {
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
              'Then I see error messages for invalid input',
              <String>[],
              null,
              dependencies,
            );
          },
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
