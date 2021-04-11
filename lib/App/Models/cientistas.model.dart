class Person {
  String personFirstName;
  String personLastName;
  String image;

  Person({this.personFirstName, this.personLastName, this.image});
}

class PersonDataBuilder {
  List getPeople() {
    return [
      Person(
          personFirstName: "Alan",
          personLastName: "Turing",
          image: 'assets/images/alanTuring.jpg'),
      Person(
          personFirstName: "Ada",
          personLastName: "Lovelace",
          image: 'assets/images/adaLovelace.jpg'),
      Person(
        personFirstName: "Donald",
        personLastName: "Knuth",
        image: 'assets/images/donaldK.jpg',
      ),
      Person(
          personFirstName: "Grace",
          personLastName: "Hopper",
          image: 'assets/images/graceMurray.jpg'),
      Person(
          personFirstName: "Linus",
          personLastName: "Torvalds",
          image:
              'assets/images/LinuxCon_Europe_Linus_Torvalds_03_(cropped).jpg'),
      Person(
          personFirstName: "Ray",
          personLastName: "Tomlinson",
          image: 'assets/images/Ray_Tomlinson.jpg'),
      Person(
          personFirstName: "Tim",
          personLastName: "Berners-Lee",
          image: 'assets/images/Tim_Berners-Lee.jpg'),
      Person(
          personFirstName: "Vint",
          personLastName: "Cerf",
          image: 'assets/images/vintCertf.jpg'),
    ];
  }
}
