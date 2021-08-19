var reporter = require('cucumber-html-reporter');


var options = {
        theme: 'bootstrap',
        jsonFile: 'integration_test/gherkin/reports/parsed_json_report_safari.json',
        output: 'integration_test/gherkin/reports/cucumberreportsafari.html',
        reportSuiteAsScenarios: true,
        scenarioTimestamp: true,
        launchReport: true,
        metadata: {
            "App Version":"0.3.2",
            "Test Environment": "DEV",
            "Browser": "Safari",
            "Platform": "Mac",
            "Parallel": "Scenarios",
            "Executed": "Remote"
        }
    };

    reporter.generate(options);

