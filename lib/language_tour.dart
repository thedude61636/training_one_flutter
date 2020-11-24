main() {
  int age = 27;
  String name = "Nael";
  bool aBool = false;
  double aDouble = .6;

  var aVar = "aVar";

  final String aFinalString = "aFinalValue";

  const String aConst = "aCont";

  List aList = ["asd", 123, false];
  List<String> aListOfStrings = ["name", "etc"];
  aListOfStrings.add("value");
  print(aListOfStrings[1]);

  Set<String> aSet = {"name", "name", "aSet"};
  aSet.add("name");
  print(aSet);

  Map<String, dynamic> aMap = {
    "name": "Nael",
    "age": 27,
  };
  print(aMap["name"]);
  aMap.addAll({"height": 169});
  print(aMap);
  var added = addTwoNumber(
    first: 27,
    second: 27,
    third: 123,
  );
  print(added);

  for (int i = 0; i < 2; i++) {
    print(i);
  }
  for (var a in aListOfStrings) {
    print(a);
  }
  aSet.forEach((element) {
    print(element);
  });

  bool statement = false;

  if (statement ?? (age < 28)) {
    print("heh");
  } else if (name.toLowerCase() != "nael") {
    print("something else");
  }
  String tenerary;
  if (aDouble < 1) {
    tenerary = "it's less than one";
  } else {
    tenerary = "it's greater than one";
  }
  print(tenerary);
  tenerary = aDouble < 1 ? "it's less than one" : "it's greater than one";
  print(tenerary);

  List<String> letters = [
    "A",
    "b",
    "c",
    if (aDouble > 1) "d",
  ];
  if (aDouble < 1) {
    letters.add("e");
  }
  print(letters);

  letters = letters.map((e) {
    return e.toUpperCase();
  }).toList();
  print(letters);

  List<int> intList = [3, 5, 6];
  List<String> stringList = intList.map((e) {
    return e.toString();
  }).toList();
  print(stringList);

  Animal cat = Animal(4, "Cat");

  cat.canWalk = true;
  cat.canFly = false;
  cat.addALeg();

  Animal bird = Animal(4, "Bird");
  bird.canWalk = true;
  bird.canFly = true;

  var animals = [
    Animal(4, "Cat"),
    Animal(2, "Bird")
      ..canWalk = true
      ..canFly = true,
    bird,
    Animal(4, "Lion"),
    Animal(4, "Donkey"),
    Animal(4, "Cat")
      ..canWalk = true
      ..canFly = false,
  ];

  print(cat);
}

int addTwoNumber({int first, int second, int third = 0}) {
  print(first);
  return first + second + third;
}

class Animal {
  int numberOfLegs;
  String name;
  bool hasFur;
  bool canWalk;
  bool canFly;

  Animal(this.numberOfLegs, this.name, {this.hasFur = false});

  @override
  String toString() {
    return 'I am an animal and i have $numberOfLegs legs, and my name is ${name} and my fur is ${hasFur}, '
        'can fly $canFly, can walk $canWalk';
  }

  void addALeg() {
    numberOfLegs = numberOfLegs + 1;
  }
}
