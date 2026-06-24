class BmiInputModel {
  String gender;
  double height;
  int age;
  int weight;
  BmiInputModel({
    this.gender = 'Male',
    this.height = 174,
    this.age = 29,
    this.weight = 60,
  });

  double calculateBmi() {
    return weight / (height * height);
  }
}
