void main() {
  final List arr = List.generate(10000000, (index) => index);

  DateTime start = new DateTime.now();
  for (var i = 0; i < arr.length; i++) {
    arr[i] = i - 1;
  }
  DateTime end = new DateTime.now();
  print("for time: ${end.difference(start)}");

  start = new DateTime.now();
  for (var a in arr) {
    a = a - 1;
  }
  end = new DateTime.now();
  print("for in time: ${end.difference(start)}");

  start = new DateTime.now();
  var i = 0;
  while (i < arr.length) {
    arr[i] = i - 1;
    i++;
  }
  end = new DateTime.now();
  print("while time: ${end.difference(start)}");

  start = new DateTime.now();
  final arr2 = arr.map((a) => a - 1).toList();
  end = new DateTime.now();
  print("map time: ${end.difference(start)}");

  start = new DateTime.now();
  final ret = arr.reduce((pre, cur) => pre + cur);
  end = new DateTime.now();
  print("reduce time: ${end.difference(start)}");
}
