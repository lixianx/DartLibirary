import 'dart:html';

void main() {
  // Find an element by id (an-id).
  Element idElement = querySelector('#an-id')!;

// Find an element by class (a-class).
  Element classElement = querySelector('.a-class')!;

// Find all elements by tag (<div>).
  List<Element> divElements = querySelectorAll('div');

// Find all text inputs.
  List<Element> textInputElements = querySelectorAll(
    'input[type="text"]',
  );

// Find all elements with the CSS class 'class'
// inside of a <p> that is inside an element with
// the ID 'id'.
  List<Element> specialParagraphElements = querySelectorAll('#id p.class');
  //创建element
  var elem = ParagraphElement();
  elem.text = 'Creating is easy!';
  //通过解析heml文本来创建
  var elem2 = Element.html('<p>Creating <em>is</em> easy!</p>');
  //添加到body中
  document.body!.children.add(elem2);
  
}
