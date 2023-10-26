import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 20.0,
            ),
            OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0))),
                foregroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 209, 209, 209)),
                side: const MaterialStatePropertyAll(
                  BorderSide(
                      color: Color.fromARGB(255, 209, 209, 209), width: 1.0),
                ),
              ),
              onPressed: () {},
              child: const Text('Series'),
            ),
            const SizedBox(
              width: 10.0,
            ),
            OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0))),
                foregroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 209, 209, 209)),
                side: const MaterialStatePropertyAll(
                  BorderSide(
                      color: Color.fromARGB(255, 209, 209, 209), width: 1.0),
                ),
              ),
              onPressed: () {},
              child: const Text('Peliculas'),
            ),
            const SizedBox(
              width: 10.0,
            ),
            OutlinedButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0))),
                foregroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 209, 209, 209)),
                side: const MaterialStatePropertyAll(
                  BorderSide(
                      color: Color.fromARGB(255, 209, 209, 209), width: 1.0),
                ),
              ),
              onPressed: () {},
              child: const Row(
                children: [
                  Text('Categorias'),
                  Icon(
                    Icons.expand_more,
                    size: 20.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
          ],
        ),
        const SizedBox(
          height: 20.0,
        ),
      ],
    );
  }
}
