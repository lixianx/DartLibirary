void main() {
  //创建一个空字符串集合
  var s = <String>{};
  //向集合中添加元素
  s.addAll(['a', 'b', 'c']);
  print(s);
  //添加单个元素
  s.add('d');
  print(s);
  //删除元素
  s.remove('d');
  print(s);
  //初始化集合
  var ss = Set.from([1, 2, 3]);
  print(ss);
  //判断集合是否包含某个元素或多个元素
  print(ss.contains(1));
  print(ss.containsAll([1, 2]));
  //求交集
  var set1 = Set.from([1, 2, 3, 4]);
  var set2 = Set.from([2, 3, 4]);
  var intersection = set1.intersection(set2);
  print(intersection);
}
