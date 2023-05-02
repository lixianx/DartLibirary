//NoSuchMethodError当接收对象未实现方法时抛出
//ArgumentError遇到以外的参数
//通过实现Exception接口来自定义异常
class FooException implements Exception {
  final String? msg;
  const FooException([this.msg]);//可选参数
  @override
  String toString() => msg ?? 'FooException';//若msg不空， 返回msg，否则返回'FooException'
}

void main() {
  FooException test1 = FooException('lalala');
  FooException test2 = FooException();
  print(test1.toString());
  print(test2.toString());
}
