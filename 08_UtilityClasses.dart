class Line implements Comparable<Line> {
  final int length;
  const Line(this.length);
  @override
  int compareTo(Line other) => length - other.length;
}

class Person {
  final String firstName, lastName;
  Person(this.firstName, this.lastName);
  @override
  int get hasCode => Object.hash(firstName, lastName);
  @override
  bool operator ==(Object other) {
    return other is Person &&
        other.firstName == firstName &&
        other.lastName == lastName;
  }
}

void main() {
  Line short = Line(1);
  Line long = Line(100);
  print(short.compareTo(long));
  //dart中的对象自动提供一个整数哈希码，通过hashCode方法
  Person p1 = Person('xuKun', 'Cai');
  Person p2 = Person('xuKun', 'BuCai');
  Person p3 = Person('xuKun', 'Cai');
  print(p1 == p2);
  print(p1 == p3);
  print(p1.hasCode == p3.hasCode);
}
