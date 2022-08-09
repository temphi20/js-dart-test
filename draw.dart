class Test extends Object {
  static int index = 0;
  static func() {
    int i = 1;
    print("func ${i++}");
    print("- func ${index++}");
  }

  Test(this.p) {
    print(p);
  }
  int p;

  void foo() {}
}

class DObject extends Object {
  DObject({required this.id, this.name = ""})
      : assert(id.trim().isNotEmpty, "ID($id) should not be empty");

  final String id;
  String name;

  DObject copyWith({String? id, String? name}) =>
      new DObject(id: id ?? this.id, name: name ?? this.name);

  @override
  bool operator ==(Object other) => other is DObject ? other.id == id : false;
  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => "($id: $name)";
}

void main() {
  final List list = [];
  print(list.last);
  // Test test = Test();
  Test.func();
  Test.func();
  Test.func();

  Test(00);
  Test(010);
  Test(0x10);
}
