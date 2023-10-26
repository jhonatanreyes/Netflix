import 'package:flutter/material.dart';
import 'package:netflix/clases.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class SoloNetflix extends StatefulWidget {
  const SoloNetflix({
    super.key,
  });

  @override
  State<SoloNetflix> createState() => _SoloNetflixState();
}

class _SoloNetflixState extends State<SoloNetflix> {
  late Future<List<Datos>> _listadoDatos;
  Future<List<Datos>> _getDatos() async {
    final response = await http.get(
      Uri.parse(
          'https://api.giphy.com/v1/gifs/trending?api_key=MzKqmZZkqOCaR1dREypPCCFMrwTKydhN&limit=20&offset=5&rating=pg-13&bundle=low_bandwidth'),
    );

    List<Datos> datos = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

      for (var item in jsonData["data"]) {
        datos.add(
          Datos(item["title"], item["images"]["downsized"]["url"]),
        );
      }
      return datos;

      //print(datos);
      //print(jsonData["data"]);
    } else {
      throw Exception('FALO LA CONEXION');
    }
  }

  @override
  void initState() {
    super.initState();
    _listadoDatos = _getDatos();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 10.0, top: 20.0, bottom: 10.0),
          child: const Text(
            'Solo en Netflix',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 30.0),
          width: 400.0,
          height: 200.0,
          child: FutureBuilder(
            future: _listadoDatos,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView(
                  scrollDirection: Axis.horizontal,
                  children: _listData(snapshot.data),
                );
                //print(snapshot.data);
              } else {
                if (snapshot.hasError) {
                  const Text('ERROR');
                }
              }
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
          ),
        ),
      ],
    );
  }

  List<Widget> _listData(info) {
    List<Widget> data = [];

    for (var x in info) {
      data.add(
        Row(
          children: [
            const SizedBox(
              width: 10.0,
            ),
            Container(
              alignment: Alignment.center,
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: const Color.fromARGB(75, 144, 144, 144),
              ),
              child: Stack(
                children: [
                  Image.network(x.url, fit: BoxFit.cover),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return data;
  }
}
