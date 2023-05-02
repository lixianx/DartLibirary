import 'dart:convert';

void main() {
  var jsonString = '''
[
  {'姓名':'蔡徐坤'},
  {'爱好':'篮球'}
]
''';
  var messege = jsonDecode(jsonString);
  print(messege);
}
