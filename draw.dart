import 'dart:convert';

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
  String toString() => name;

  bool operator >(DObject other) => name.compareTo(other.name) > 0;

  bool operator <(DObject other) => name.compareTo(other.name) < 0;

  bool operator >=(DObject other) => name.compareTo(other.name) >= 0;

  bool operator <=(DObject other) => name.compareTo(other.name) <= 0;

  DObject operator +(DObject other) =>
      new DObject(id: id, name: name + other.name);
  DObject operator -(DObject other) {
    String newName = "";
    final List<int> written = [];
    loop:
    for (int i = 0; i < name.length; i++) {
      for (int j = 0; j < other.name.length; j++) {
        if (name[i] == other.name[j] && !written.contains(j)) {
          written.add(j);
          continue loop;
        }
      }
      newName += name[i];
    }

    return new DObject(id: id, name: newName);
  }

  int compareTo(DObject other) => name.compareTo(other.name);

  Map<String, dynamic> toMap() => {"id": id, "name": name};

  DObject fromMap(Map<String, dynamic> map) =>
      DObject(id: map["id"], name: map["name"]);

  String toJson() => json.encode(toMap());
}

class EDObject extends DObject {
  EDObject({required super.id, super.name, this.explain = ""});

  String explain;

  @override
  EDObject copyWith({String? id, String? name, String? explain}) =>
      (super.copyWith(id: id, name: name) as EDObject)
        ..explain = explain ?? this.explain;

  @override
  Map<String, dynamic> toMap() => super.toMap()..addAll({"explain": explain});

  @override
  EDObject fromMap(Map<String, dynamic> map) =>
      (super.fromMap(map) as EDObject)..explain = map["explain"];

  // @override
  // EDObject operator +(DObject other) => (this + other)..explain = explain;
  // @override
  // EDObject operator -(DObject other) => (this - other)..explain = explain;
}

void main() {
  // final test = EDObject(id: "id", name: "ddtest", explain: "dddd");
  // final test1 = EDObject(id: "id", name: "dd", explain: "dddd");
  // print((test - test1).explain);
  // print(test.toMap());
  // print(test.toJson());
  // DateTime f = DateTime.now();
  // f.compareTo(other)
}
