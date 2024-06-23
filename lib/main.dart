

void main() {
  Car myFirstCar = Car(brand: "Mazda", model: "MX5", year: 2020, milesDriven: 20000.45);
  Car mySecondCar = Car(brand: "Tesla", model: "RoadStar", year: 2021, milesDriven: 20863.76);
  Car myThirdCar = Car(brand: "Toyota", model: "Supra", year: 2018, milesDriven: 65745.34);


  // First Car
  myFirstCar.getBrand();
  myFirstCar.getModel();
  myFirstCar.getYear();
  myFirstCar.getAge();
  myFirstCar.drive(50);
  myFirstCar.getMilesDriven();

  // Second Car
  mySecondCar.getBrand();
  mySecondCar.getModel();
  mySecondCar.getYear();
  mySecondCar.getAge();
  mySecondCar.drive(46);
  mySecondCar.getMilesDriven();

  // Third Car
  myThirdCar.getBrand();
  myThirdCar.getModel();
  myThirdCar.getYear();
  myThirdCar.getAge();
  myThirdCar.drive(50);
  myThirdCar.getMilesDriven();
  
  print("Number of Cars: ${Car.numberOfCars}");
}

class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  Car({required this.brand, required this.model, required this.year, required this.milesDriven,}){
    Car.numberOfCars++;
  }

  void drive(double miles){
    milesDriven = milesDriven + miles;
    print(getMilesDriven());
  }

  double getMilesDriven (){
    return milesDriven;
  }

  String getBrand(){
    print("brand: $brand");
    return brand;
  }

  String getModel(){
    print("model: $model");
    return model;
  }

  int getYear(){
    print("Model year: $year");
    return year;
  }

  int getAge(){
    int age = DateTime.now().year - year;
    print("Age of car: $age");
    return age;
  }

  static int numberOfCars = 0;
}
