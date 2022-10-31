import 'package:flutter/material.dart';
import 'package:asetbarcode/home.dart';

void main() => runApp(const MaterialApp(home: MyHome()));

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sensus Aset Sleman')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Home()),
            );
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => const QRViewExample(),
            // ));

          },
          child: const Text('login'),
        ),
      ),
    );
  }
}