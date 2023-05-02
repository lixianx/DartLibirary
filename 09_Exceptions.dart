//NoSuchMethodError当接收对象未实现方法时抛出
//ArgumentError遇到以外的参数
//通过实现Exception接口来自定义异常
class FooException implements Exception{
  final String? msg;
  const FooException([this.msg]);
  @override
  String toString() => msg ?? 'FooException';
}

void main(){
  
}