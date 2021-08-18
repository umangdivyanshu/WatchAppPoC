//import {parseJson} from './jsonparser';

var reporter = require('cucumber-html-reporter');
//var parser = require('./jsonparser.js');


var options = {
        theme: 'bootstrap',
        jsonFile: 'integration_test/gherkin/reports/parsed_json_report.json',
        output: 'report/cucumberreport.html',
        reportSuiteAsScenarios: true,
        scenarioTimestamp: true,
        launchReport: true,
        metadata: {
            "App Version":"0.3.2",
            "Test Environment": "STAGING",
            "Browser": "Chrome  54.0.2840.98",
            "Platform": "Mac",
            "Parallel": "Scenarios",
            "Executed": "Remote"
        }
    };

    //parseJson();
    //parser.parseJson();
    reporter.generate(options);

