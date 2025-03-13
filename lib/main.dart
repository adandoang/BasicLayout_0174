import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const WeatherHomePage(),
    );
  }
}

class WeatherHomePage extends StatelessWidget {
  const WeatherHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_box, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Yogyakarta',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text('Today', style: TextStyle(fontSize: 18, color: Colors.grey)),
            const SizedBox(height: 20),
            const Text(
              '28°C',
              style: TextStyle(fontSize: 90, fontWeight: FontWeight.normal, color: Colors.blue),
            ),
            const Divider(
              color: Colors.grey, // Warna garis
              thickness: 1, // Ketebalan garis
              indent: 50, // Jarak dari kiri
              endIndent: 50, // Jarak dari kanan
            ),
            const SizedBox(height: 10),
            const Text('Sunny', style: TextStyle(fontSize: 22, color: Colors.grey)),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.ac_unit, color: Colors.blue, size: 20),
                SizedBox(width: 5),
                Text('5 km/h', style: TextStyle(fontSize: 25, color: Colors.blue)),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  const Text('Next 7 days',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(4, (index) {
                      // Daftar waktu yang akan ditampilkan
                      List<String> times = ["Now", "17.00", "20.00", "23.00"];

                      return Column(
                        children: [
                          Text(times[index], // Menampilkan waktu di atas
                              style: const TextStyle(fontSize: 20, color: Colors.black)),
                          const SizedBox(height: 5),
                          const Icon(Icons.ac_unit, color: Colors.blue, size: 25),
                          const SizedBox(height: 5),
                          const Text('28°C', style: TextStyle(fontSize: 20, color: Colors.blue)),
                          const SizedBox(height: 5),
                          const Icon(Icons.air, color: Colors.blue, size: 25),
                          const Text('10 km/h', style: TextStyle(fontSize: 20, color: Colors.red)),
                          const SizedBox(height: 5),
                          const Icon(Icons.umbrella, size: 25, color: Colors.black),
                          const SizedBox(height: 5),
                          const Text('0%', style: TextStyle(fontSize: 20, color: Colors.black)),
                        ],
                      );
                    }),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Developed by: akhdanjauzaa.id',
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
