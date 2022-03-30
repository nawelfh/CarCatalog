class Car {
  int Id = 0;
  String Matricule = '';
  String Marque = '';
  String Modele = '';

  Car(this.Id, this.Matricule, this.Marque, this.Modele);

  Car.fromJson(Map<String, dynamic> carMap) {
    this.Id = carMap['id'];
    this.Matricule = carMap['matricule'];
    this.Marque = carMap['marque'];
    this.Modele = carMap['modele'];
  }
}
