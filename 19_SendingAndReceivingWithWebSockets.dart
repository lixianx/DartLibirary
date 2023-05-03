import 'dart:html';

void main() {
  //通过单个链接进行双向通信，而不需要进行频繁的http请求和响应
//握手完成后连接将由HTTP升级为WebSocket
  var ws = WebSocket('ws://echo.websocket.org');
  ws.onOpen.listen((event) {
    print('WebSocket connected');
    ws.send('Hello, WebSocket');
  });

  ws.onMessage.listen((event) {
    print('Received message: ${event.data}');
    ws.close();
  });

  ws.onClose.listen((event) {
    print('Websocket closed');
  });

  ws.onError.listen((event) {
    print('webSocket error');
  });
}
