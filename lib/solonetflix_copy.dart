import 'package:flutter/material.dart';
import 'package:netflix/clases.dart';

class SoloNetflix extends StatelessWidget {
  const SoloNetflix({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Solo> _solos = [
      Solo('netflix.png'),
      Solo('poster_4.jpg'),
      Solo('poster_5.jpg'),
      Solo('top_1.jpg'),
      Solo('top_2.jpg'),
      Solo('top_3.jpg'),
      Solo('top_4.jpg'),
      Solo('top_5.jpg'),
    ];

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
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: _solos.length,
            separatorBuilder: (context, index) {
              return const Divider();
            },
            itemBuilder: (context, i) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color.fromARGB(75, 144, 144, 144),
                  image: DecorationImage(
                    image: AssetImage('assets/${_solos[i].imagen}'),
                    fit: BoxFit.fill,
                  ),
                ),
                margin: const EdgeInsets.only(right: 10.0),
                width: 160.0,
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.topRight,
                          width: 160.0,
                          height: 80,
                          child: Container(
                            padding: const EdgeInsets.only(top: 1.0),
                            width: 28.0,
                            height: 28.0,
                            color: const Color.fromARGB(255, 255, 0, 0),
                            child: const Text(
                              'TOP 10',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.bottomCenter,
                          height: 120.0,
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
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
