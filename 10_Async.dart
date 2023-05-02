//常见的异步操作
//通过网络获取数据
//将数据写入数据库
//读文件
import 'dart:async';

//---------------------错误示范--------------------------
// Future<String> createOrderMessage() async {
//   var order = fetchUserOrder(); //fet函数需要两秒后才能返回，因此order不是我梦想要的结果
//   return 'Your order is: $order';
// }

// Future<String> fetchUserOrder() =>
//     // Imagine that this function is more complex and slow.
//     Future.delayed(
//       const Duration(seconds: 2),
//       () => 'Large Latte',
//     );

///
///同步操作：同步操作会阻止其他操作执行，直到他完成
///同步函数：同步函数只执行同步操作
///异步操作：一旦启动，异步操作允许其他操作在他完成之前执行
///异步函数：一个异步函数至少执行一个异步操作，也可执行同步操作
///Future表示异步操作的结果，未完成和已完成
///未完成：
///当你调用异步函数时，会返回一个未完成的未来，未来正在等待异步函数操作的完成或抛出错误
///已完成：
///如果异步操作成功，未来将完成一个值，否则将完成一个错误
///
///

Future<void> fetchUserOrder2() {
  return Future.delayed(const Duration(seconds: 2), () => print('Large Latte'));
}

void main() async {
  print(fetchUserOrder2());
  print('Fetching user order...');
}
