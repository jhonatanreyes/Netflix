import 'package:flutter/material.dart';

class Portada extends StatelessWidget {
  const Portada({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      height: 450.0,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage('assets/bailarina.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image(
                image: AssetImage('assets/netflix.png'),
                width: 20.0,
              ),
              Text(
                'PELICULA',
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 5.0),
              ),
            ],
          ),
          const Text(
            'BAILARINA',
            style: TextStyle(
              color: Color.fromARGB(255, 233, 195, 208),
              fontSize: 55.0,
              letterSpacing: -5.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            'Acción Asiatica • Venganza • De Corea',
            style: TextStyle(color: Colors.white70, letterSpacing: 1.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.play_arrow),
                label: const Text(
                  'Reproducir',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: const ButtonStyle(
                  iconSize: MaterialStatePropertyAll(30.0),
                  backgroundColor: MaterialStatePropertyAll(Colors.white),
                  foregroundColor:
                      MaterialStatePropertyAll(Color.fromARGB(255, 0, 0, 0)),

                  //backgroundColor: MaterialStatePropertyAll(Colors.white),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text(
                  'Mi lista',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: const ButtonStyle(
                  iconSize: MaterialStatePropertyAll(30.0),
                  minimumSize: MaterialStatePropertyAll(Size(50.0, 20.0)),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  textStyle: MaterialStatePropertyAll(
                    TextStyle(color: Colors.amber),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
