import 'dart:html';

String encodeMap(Map<String, String> data) => data.entries
    .map((e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
    .join('&');

void main() async {
  String url = 'https://dart.dev/guides/libraries/library-tour#stream';
  const data = {'dart': 'fun', 'angular': 'productive'};

  var request = HttpRequest();
  request
    ..open('POST', url)
    ..setRequestHeader(
      'Content-type',
      'application/x-www-form-urlencoded',
    )
    ..send(encodeMap(data));
  await request.onLoadEnd.first;

  if (request.status == 200) {
    // Successful URL access...
  }
  // ···
}
