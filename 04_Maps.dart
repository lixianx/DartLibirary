void main() {
  //使用构造函数创建map对象
  var m = Map();
  print(m);
  //初始化
  var map = {
    '蔡徐坤': ['唱', '挑', 'Rap', '篮球'],
    '渣渣辉': '是兄弟就来砍我'
  };
  print(map);
  print(map['蔡徐坤']);
  //指定键值对数据类型
  var mm = Map<String, int>();
  //使用[键]访问值
  var d = {1: 'a'};
  print(d[1]);
  //查询map是否包含某个key、value
  print(d.containsKey(1));
  print(d.containsValue('a'));

  var hawaiianBeaches = {
    'Oahu': ['Waikiki', 'Kailua', 'Waimanalo'],
    'Big Island': ['Wailea Bay', 'Pololu Beach'],
    'Kauai': ['Hanalei', 'Poipu']
  };
  //将map中的键、键以集合的形式提取出来
  var keys = hawaiianBeaches.keys;
  var values = hawaiianBeaches.values;
  print(keys.runtimeType);
  print(keys);
  print(values);
  var testMap = Map<String, int>();
  //使用putIfAbsent()函数为不存在的映射创建一个键值对
  testMap.putIfAbsent('Catcher', () => 1);
  testMap.putIfAbsent('Catcher', ()=>2);//Catcher的值没有发生变化
  print(testMap);
  var test2 = Map<int, int>();
  for (int i = 1; i <= 5; i++) {
    test2.putIfAbsent(i, () => i * 6);
  }
  print(test2);
}
