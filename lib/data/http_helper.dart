import 'package:http/http.dart' as http;
import 'dart:convert';
import '../data/car.dart';
import 'package:flutter/cupertino.dart';

class HttpHelper {
  final String authority = 'localhost:44380';
  final String path = 'Voiture';

  Future<List<Car>> getVoitures() async {
    Map<String, dynamic> parameters = {};
    Uri uri = Uri.https(authority, path, parameters);
    http.Response result = await http.get(uri);

    List<dynamic> data = json.decode(result.body);
    List<Car> cars = [];

    data.forEach((element) {
      cars.add(Car.fromJson(element));
    });

    return cars;
  }
}
