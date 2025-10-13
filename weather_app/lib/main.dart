import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WeatherPage());
  }
}

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/haze.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  TextField(
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Colors.black26,
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.location_on),
                      Text(
                        'Malaysia',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Text(
                    '30.9°c',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 90,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Haze',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Image.asset('assets/icons/Haze.png', height: 80),
                    ],
                  ),
                  SizedBox(height: 25),
                  Row(
                    children: [
                      Icon(Icons.arrow_upward),
                      Text(
                        '35°c',
                        style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Icon(Icons.arrow_downward),
                      Text(
                        '25°c',
                        style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 25),
                  Card(
                    elevation: 5,
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Row(children: [Text('Sunrise'), Text('Sunset')]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
