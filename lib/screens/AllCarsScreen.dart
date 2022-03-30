import 'package:car_catalog/data/car.dart';
import 'package:flutter/material.dart';
import '../data/http_helper.dart';

class AllCarsScreen extends StatefulWidget {
  const AllCarsScreen({Key? key}) : super(key: key);

  @override
  _AllCarsScreenState createState() => _AllCarsScreenState();
}

class _AllCarsScreenState extends State<AllCarsScreen> {
  List<Car> result = [Car(0, '', '', '')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('List of Cars')),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                child: Text('Get list'),
                onPressed: getData,
              ),
              DataTable(
                  columns: const <DataColumn>[
                    DataColumn(
                      label: Text(
                        'Matricule',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Marque',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Modele',
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                  rows: result
                      .map((item) => DataRow(
                            cells: <DataCell>[
                              DataCell(Text(item.Matricule)),
                              DataCell(Text(item.Marque)),
                              DataCell(Text(item.Modele)),
                            ],
                          ))
                      .toList()),
            ],
          ),
        ));
  }

  Future getData() async {
    HttpHelper helper = HttpHelper();
    result = await helper.getVoitures();
    setState(() {});
  }
}
