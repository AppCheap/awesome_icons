import "dart:convert";
import "dart:io";

String _getPrefix(String type) {
  String _prefix = "far";
  if (type == "brands") {
    _prefix = "fab";
  } else if (type == "solid") {
    _prefix = "fas";
  }
  return _prefix;
}

String _getKey(String type, String key) {
  return _getPrefix(type) + "-" + key;
}

void main(List<String> args) {
  File fontsConfigFile = File('./data/icons.json');

  if (!fontsConfigFile.existsSync()) {
    print('config file not found');
    exit(0);
  }

  Map<String, dynamic> icons = json.decode(fontsConfigFile.readAsStringSync());

  List<dynamic> dataIcons = [];

  icons.forEach((String key, dynamic icon) {
    List<dynamic> types = List<dynamic>.of(icon['free']);
    for (var type in types) {
      dataIcons.add({
        'name': _getKey(type, key),
        'label': icon['label'],
        'tags': icon['search']['terms'],
      });
    }
  });

  File output = File('./data/data.json');
  output.writeAsStringSync(jsonEncode(dataIcons));
}
