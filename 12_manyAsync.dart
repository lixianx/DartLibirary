Future<int> add(int a, int b) async {
  return Future.delayed(Duration(seconds: 4), () => a + b);
}

Future<int> multiply(int a, int b) async {
  return Future.delayed(Duration(seconds: 4), () => a * b);
}

Future<int> xor(int a, int b) async {
  return Future.delayed(Duration(seconds: 4), () => a ^ b);
}

void main() async {
  int res1, res2, res3;
  res1 = await add(1, 2);
  print('res1 = $res1');
  res2 = await multiply(res1, 2);
  print('res2 = $res2');
  res3 = await xor(res2, 1);
  print('res3 = $res3');
  print('Done with step 1');
  //NOTICE：Future.wait方法会同步执行列表中的所有异步函数
  var result = await Future.wait([add(1, 2), multiply(1, 2), xor(1, 2)]);//返回一个列表
  print('result = $result');
  print('Done with all the long steps!');
}
