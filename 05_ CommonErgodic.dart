void main() {
  var s = Set.from([0, 1, 2, 3, 4]);
  var m = {'姓名': '邢立贤', '学号': '20211060258', '学院': '信息学院'};
  //forEach
  s.forEach(print);
  m.forEach((k, v) => print('$k : $v'));
  //teas.map()方法遍历teas
  var teas = ['green', 'black', 'chamomile'];
  var upperTeas = teas.map((tea) => tea.toUpperCase());
  upperTeas.forEach(print);
  //转Set
  var ss = teas.map((tea) => tea.toUpperCase()).toSet();
  print(ss);
  //where()方法提取符合条件的项目
  var Black = teas.where((tea) => tea == 'black').toList();
  print(Black);
  print(Black.runtimeType);
  bool isBlack(String name) => name == 'black';
  //any()至少有一项符合
  print(teas.any(isBlack));
  //evary()所有项满足
  print(teas.every(isBlack));

}
