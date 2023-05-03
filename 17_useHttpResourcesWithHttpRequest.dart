import 'dart:html';

void main() async {
  //从服务器获取数，应在web应用程序中运行
  String url = 'https://dart.dev/guides/libraries/library-tour#stream';
  String pageHtml = await HttpRequest.getString(url);
  //抓取异常
  try {
    var data = await HttpRequest.getString(url);
  } catch (e) {
    print(e);
  }
}
