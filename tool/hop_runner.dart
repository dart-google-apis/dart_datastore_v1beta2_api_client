library hop_runner;

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main(List<String> args) {

  List pathList = [
    'lib/datastore_v1beta2_api_browser.dart',
    'lib/datastore_v1beta2_api_console.dart',
    'lib/datastore_v1beta2_api_client.dart'
  ];

  addTask('docs', createDartDocTask(pathList, linkApi: true));

  addTask('analyze', createAnalyzerTask(pathList));

  runHop(args);
}
