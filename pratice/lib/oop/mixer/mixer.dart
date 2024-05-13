class Animal {
  final String animal;

  Animal({required this.animal});
}

mixin CanFly {
  String data(String name) => '$name can fly';
}

mixin  CanRun {
  String data(String name) => '$name can run';
}

class Child extends Animal with CanFly, CanRun {
  Child(String name) : super(animal: name);
}

void main(List<String> args) {
 

}
