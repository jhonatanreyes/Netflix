import 'package:flutter/material.dart';
import 'clases.dart';

class Tendencia extends StatefulWidget {
  Tendencia({
    super.key,
  });

  final List<Tendencias> _tendencias = [
    Tendencias('top_0.jpg'),
    Tendencias('poster_1.jpg'),
    Tendencias('poster_2.jpg'),
    Tendencias('poster_3.jpg'),
    Tendencias('poster_4.jpg'),
    Tendencias('poster_5.jpg'),
  ];

  @override
  State<Tendencia> createState() => _TendenciaState();
}

class _TendenciaState extends State<Tendencia> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 10.0, top: 20.0, bottom: 10.0),
          child: const Text(
            'Tendencia',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
        SizedBox(
          width: 400.0,
          height: 140.0,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: widget._tendencias.length,
            separatorBuilder: (context, index) {
              return const Divider(
                height: 50.0,
              );
            },
            itemBuilder: (context, i) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color.fromARGB(75, 144, 144, 144),
                  image: DecorationImage(
                    image: AssetImage('assets/${widget._tendencias[i].imagen}'),
                    fit: BoxFit.fill,
                  ),
                ),
                margin: const EdgeInsets.only(right: 10.0),
                width: 130.0,
                alignment: Alignment.bottomCenter,
                child: Container(
                  alignment: Alignment.center,
                  width: 100.0,
                  height: 20.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    color: Colors.red,
                  ),
                  child: const Text(
                    'Recién Agregado',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 10.0),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
