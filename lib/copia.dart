import 'package:flutter/material.dart';

void main() {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Netflix',
      home: PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 21, 0, 83),
              Color.fromARGB(255, 0, 0, 0)
            ]),
      ),
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white38,
          backgroundColor: const Color.fromARGB(50, 255, 255, 255),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.slideshow),
              label: 'Nuevo y Popular',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Mi Netflix',
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: const Text(
            'NETFLIX',
            style: TextStyle(fontSize: 28.0),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cast),
              iconSize: 30.0,
            ),
            const SizedBox(width: 5.0),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              iconSize: 30.0,
            ),
          ],
          backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        ),
        body: ListView(
          children: [
            Column(
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
                              color: Color.fromARGB(255, 209, 209, 209),
                              width: 1.0),
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
                              color: Color.fromARGB(255, 209, 209, 209),
                              width: 1.0),
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
                              color: Color.fromARGB(255, 209, 209, 209),
                              width: 1.0),
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
                Container(
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
                        style: TextStyle(
                            color: Colors.white70, letterSpacing: 1.0),
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
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              foregroundColor: MaterialStatePropertyAll(
                                  Color.fromARGB(255, 0, 0, 0)),

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
                              minimumSize:
                                  MaterialStatePropertyAll(Size(50.0, 20.0)),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.black),
                              textStyle: MaterialStatePropertyAll(
                                TextStyle(color: Colors.amber),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(
                      left: 10.0, top: 20.0, bottom: 10.0),
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
                    itemCount: 6,
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 50.0,
                      );
                    },
                    itemBuilder: (context, i) {
                      int code = (i + 1) * 100;

                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.amber[code],
                          image: DecorationImage(
                            image: AssetImage('assets/poster_$i.jpg'),
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
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(
                      left: 10.0, top: 20.0, bottom: 10.0),
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
                    itemCount: 6,
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemBuilder: (context, i) {
                      int code = (i + 1) * 100;

                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.amber[code],
                          image: DecorationImage(
                            image: AssetImage('assets/top_$i.jpg'),
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
            ),
          ],
        ),
      ),
    );
  }
}
