function parseJson() {
        var responseJson = require('/Users/umangdivyanshu/WatchAppPoC_IntegrationTests/WatchAppPoc/integration_test/gherkin/reports/integration_response_data.json');

        var obj= responseJson.gherkin_reports.replace("[\]","");
        
        var length = obj.toString().length;
        var obj2 = obj.substr(1,(length-2));
        const fs = require('fs')
        //fs.writeFile('/Users/umangdivyanshu/WatchAppPoC_IntegrationTests/WatchAppPoc/integration_test/gherkin/reports/parsed_json_report.json', obj2, err => {
        fs.writeFile('integration_test/gherkin/reports/parsed_json_report.json', obj2, err => {

            if (err) {
                console.log('Error writing file', err)
            } else {
                console.log('Successfully wrote file')
            }
    })
}

parseJson();