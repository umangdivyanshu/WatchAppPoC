var reporter = require('cucumber-html-reporter');


var options = {
        theme: 'bootstrap',
        jsonFile: 'integration_test/gherkin/reports/parsed_json_report_chrome.json',
        output: 'integration_test/gherkin/reports/cucumberreportchrome.html',
        reportSuiteAsScenarios: true,
        scenarioTimestamp: true,
        launchReport: true,
        metadata: {
            "App Version":"0.3.2",
            "Test Environment": "DEV",
            "Browser": "Chrome  92.0.2840.98",
            "Platform": "Mac",
            "Parallel": "Scenarios",
            "Executed": "Remote"
        }
    };

    //parseJson();
    //parser.parseJson();
    reporter.generate(options);

