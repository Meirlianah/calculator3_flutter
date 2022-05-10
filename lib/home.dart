import 'package:calculator3_flutter/calculator.dart';
import 'package:calculator3_flutter/halaman_about.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://cdn.kibrispdr.org/data/icon-kalkulator-png-54.png'),
                        fit: BoxFit.cover)),
              ),
              const Text(
                'SIMPLE CALCULATOR',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30.0,
                    fontFamily: "serif",
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: 'HalamanAbout',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return HalamanAbout();
                  },
                ));
              },
              child: const Icon(Icons.person),
              backgroundColor: Colors.deepOrange,
            ),
            const SizedBox(
              width: 20.0,
            ),
            FloatingActionButton(
              heroTag: 'calculator',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) {
                    return Calculator();
                  },
                ));
              },
              child: const Icon(Icons.keyboard_arrow_right),
              backgroundColor: Colors.deepOrange,
            ),
          ],
        ));
  }
}
