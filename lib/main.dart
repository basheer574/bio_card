import 'package:flutter/material.dart';

void main() =>
    runApp(const MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          minimum: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/my_image.jpg'),
                radius: 50.0,
              ),
              const Text('Basheer',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white70,
                      fontFamily: 'Pacifico',
                      fontWeight: FontWeight.w600)),
              Text('Flutte Developer'.toUpperCase(),
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                      color: Colors.teal.shade100,
                      letterSpacing: 2.5)),
              SizedBox(
                  width: 100,
                  child: Divider(
                      height: 20.0,
                      color: Colors.teal.shade50,
                      thickness: 0.5)),
              Card(
                color: Colors.blueGrey[600],
                child: Container(
                  color: Colors.blueGrey[600],
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.phone, color: Colors.teal.shade100),
                      const SizedBox(width: 10),
                      Text('+964 555 331 152',
                          style: TextStyle(
                              color: Colors.teal.shade100,
                              fontSize: 20,
                              letterSpacing: 2.5)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 3.0),
              Card(
                color: Colors.blueGrey[600],
                child: Container(
                  color: Colors.blueGrey[600],
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  child: Row(
                    children: [
                      Icon(Icons.email, color: Colors.teal.shade100),
                      const SizedBox(width: 10),
                      Text('myemail@gmail.com',
                          style: TextStyle(
                              color: Colors.teal.shade100,
                              fontSize: 20,
                              letterSpacing: 2.5)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
