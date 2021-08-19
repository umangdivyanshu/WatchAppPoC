export const parser = () => {

    export function parseJsonChrome() {
        var responseJson = require('/Users/umangdivyanshu/WatchAppPoC_IntegrationTests/WatchAppPoc/integration_test/gherkin/reports/integration_response_data.json');

        var obj= responseJson.gherkin_reports.replace("[\]","");
        
        var length = obj.toString().length;
        var parsedJsonContent = obj.substr(1,(length-2));
        writeToFile('integration_test/gherkin/reports/parsed_json_report_chrome.json', parsedJsonContent);
    }

    export function parseJsonSafari() {
        var responseJson = require('/Users/umangdivyanshu/WatchAppPoC_IntegrationTests/WatchAppPoc/integration_test/gherkin/reports/integration_response_data.json');

        var obj= responseJson.gherkin_reports.replace("[\]","");
        
        var length = obj.toString().length;
        var parsedJsonContent = obj.substr(1,(length-2));
        writeToFile('integration_test/gherkin/reports/parsed_json_report_safari.json', parsedJsonContent);
        
    }

    function writeToFile(filename, parsedJsonContent){
        const fs = require('fs')
        fs.writeFile(filename, parsedJsonContent, err => {

            if (err) {
                console.log('Error writing file', err)
            } else {
                console.log('Successfully wrote file')
            }
        })
    }
}