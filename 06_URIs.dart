//字符串解码
void main() {
  var uri = 'https://example.org/api?foo=some message';
  var encoded = Uri.encodeFull(uri);
  print(encoded);
  encoded = Uri.decodeFull(encoded);
  print(encoded == uri);
  //对/等特殊字符编码和解码
  encoded = Uri.encodeComponent(uri);
  print(encoded);
  encoded = Uri.decodeComponent(encoded);
  print(encoded);
  //----------------------------URI解析-----------------------------
  var u = Uri.parse('https://example.org:8080/foo/bar#frag'); //将URL字符串解析称Uri对象
  print(u.scheme); //uri的方案，http, https
  print(u.host); //URI的主机名
  print(u.path); //路径
  print(u.fragment); //片段标识符
  print(u.origin);
  //building URIs
  var u1 = Uri(
      scheme: 'https',
      host: 'example.org',
      path: '/foo/bar',
      fragment: 'frag',
      queryParameters: {'lang': 'dart'});
  print(u.toString());
  //不指定片段
  var httpUri = Uri.http('example.org', '/foo/bar', {'lang': 'dart'});
  var httpsUri = Uri.https('example.org', '/foo/bar', {'lang': 'dart'});
}
