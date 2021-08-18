import 'dart:async';
import 'dart:convert';
import 'dart:io';

class JsonReader {
  static Future<void> parseResponseJson() async {
    print("Parsing Integration Data Response Json file");
    File readFile =
        File('integration_test/gherkin/reports/integration_response_data.json');
    File writeFile = File('integration_test/gherkin/reports/resultJson.json');

    try {
      print("In try block");
      if (await readFile.exists()) {
        await readFile.readAsString().then((String reponseJson) async {
          //print(reponseJson);
          final resultString = reponseJson.replaceAll("[\]]", "");
          //final resultJson = json.decode(resultString);

          await writeFile.writeAsString(json.encode(resultString));
        });
      }
    } catch (e) {
      print("In catch block");
      print(e);
    }
  }
}
