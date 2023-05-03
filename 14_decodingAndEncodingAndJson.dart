import 'dart:convert';

void main() {
  //NOTICE：Json对象中的字符串使用双引号
  var jsonString = '''
[
  {"姓名":"蔡徐坤"},
  {"爱好":"篮球"}
]
''';
  var messege = jsonDecode(jsonString);
  print(messege);
  print(messege[0]["姓名"]);
  //Json编码
  var scores = [
    {'score': 40},
    {'score': 60},
    {
      'score': [
        {'math': 70},
        {'english': 60}
      ]
    }
  ];
  var jsonText = jsonEncode(scores);
  print(jsonText);
}
