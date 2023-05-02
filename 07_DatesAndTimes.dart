void main() {
  //获取现在的时间
  var now = DateTime.now();
  print(now);
  var y2k = DateTime(2023);
  print(y2k);
  y2k = DateTime.utc(2023);
  print(y2k);
  y2k = DateTime(2023, 5, 1);
  print(y2k);
  //从Unix纪元(1970/1/1)开始以毫秒为单位的时间间隔
  y2k = DateTime.fromMillisecondsSinceEpoch(946684800000, isUtc: true);
  print(y2k);
  //创建一个新的时间，从现有的时间变量中调整
  var sameTimeLastYear = now.copyWith(year: now.year - 1);
  print(sameTimeLastYear);
}
