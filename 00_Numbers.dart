void main() {
  //将字符串转为数字
  var a = double.parse('122.4');
  var b = int.parse('0x3f3f3f3f');
  print('a = $a, b = $b');
  print('type a = ${a.runtimeType}, type b = ${b.runtimeType}');

  //将字符串转为数字，字符串为radix进制
  var c = int.parse('100101', radix: 2);
  print(c);
  print('\n');
  var d = 123.3.toString();
  print('d = $d, type d = ${d.runtimeType}');
  var e = 0.000345.toStringAsFixed(2); //保留两位小数
  print(e);
  var f = 0.000345.toStringAsPrecision(2); //保留两位有效数字
  print(f);
}
