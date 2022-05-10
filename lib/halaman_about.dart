import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HalamanAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Profile'),
          centerTitle: true,
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                width: 170,
                height: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100.0),
                    image: const DecorationImage(
                        image: AssetImage('images/rapih1.jpeg'),
                        fit: BoxFit.cover)),
              ),
              const Text(
                'Meirlianah Nurita Sari Mnanu',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24.0,
                    fontFamily: "serif",
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'meirlianah@undiksha.ac.id',
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(children: const [
                      Image(
                          width: 70.0,
                          image: NetworkImage(
                              'https://png.pngtree.com/png-vector/20191126/ourmid/pngtree-home-vector-icon-png-image_2036119.jpg')),
                      Text('Address',
                          style: TextStyle(fontFamily: "serif", fontSize: 15))
                    ]),
                    Column(children: const [
                      Image(
                          width: 70.0,
                          image: NetworkImage(
                              'https://cdn.iconscout.com/icon/free/png-256/social-media-1446669-1222344.png')),
                      Text('Social Media',
                          style: TextStyle(fontFamily: "serif", fontSize: 15))
                    ])
                  ],
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(children: const [
                      Image(
                          width: 70.0,
                          image: NetworkImage(
                              'https://cdn0.iconfinder.com/data/icons/positive-and-neutral-character-traits-alphabet-v-w/281/positive-wxyz003-512.png')),
                      Text('Hobby',
                          style: TextStyle(fontFamily: "serif", fontSize: 15))
                    ]),
                    Column(children: const [
                      Image(
                          width: 70.0,
                          image: NetworkImage(
                              'https://png.pngtree.com/png-vector/20190725/ourlarge/pngtree-school-icon-png-image_1606554.jpg')),
                      Text('Education',
                          style: TextStyle(fontFamily: "serif", fontSize: 15))
                    ])
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.keyboard_arrow_right),
          backgroundColor: Colors.deepOrange,
        ),
      ),
    );
  }
}
