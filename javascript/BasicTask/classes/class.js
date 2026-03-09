//class initialization
class Animal {
    // define constructor
  constructor(name) {
    this.name = name;
  } 

  speak() {
    console.log(`${this.name} makes a sound`);
  }
}

class Dog extends Animal {
  speak() {
    console.log(`${this.name} barks`);
  }
}
class Cat extends Animal {
  speak() {
    console.log(`${this.name} Meww`);
  }
}

const d = new Dog("Buddy");
const c = new Cat("Cat");
d.speak();
c.speak();





