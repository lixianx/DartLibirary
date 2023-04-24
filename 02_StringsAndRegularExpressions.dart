void main() {
  //一个字符串是否包含另一个字符串
  print('This is Dart'.contains('Dart'));
  //判断字符串开头
  print('This is Dart'.startsWith('This'));
  //判断字符串结尾
  print('This is Dart'.endsWith('Dart'));

  //查找字符串下标，存在返回第一次出现的位置，不存在返回-1
  var position = 'This is Dart'.indexOf('i');
  print(position);
  position = 'This is Dart'.indexOf('H');
  print(position);

  //字符串截取,[start, end)
  var str = 'This is Dart'.substring(1, 3);
  print(str);
  //字符串切割
  var parts = 'progressive web apps'.split(' ');
  print(parts);
  //下标访问
  print('This is Dart'[0]);

  for (final char in 'He ll o'.split(' ')) {
    print(char);
  }

  // 将所有字符转为utf-16编码列表
  var codeUnitList = 'Never odd or even'.codeUnits.toList();
  print(codeUnitList);

  print('abc'.toUpperCase());
  print('ABC'.toLowerCase());

  //删除前导空格和尾随空格
  print('  bbb   '.trim());
  //判断字符串是否为空
  print(''.isEmpty);

  //字符串替换,事实上原字符串并没有发生改变， 
  var s = 'this is a string';
  var h = s.replaceAll(RegExp('string'), 'Dart');
  print(h);
  print(s);
}
