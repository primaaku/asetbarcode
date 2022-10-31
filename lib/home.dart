import 'package:asetbarcode/webview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // String code = "";
  // String getcode = "";

  Future scanbarcode() async {
    // getcode =
    await FlutterBarcodeScanner.scanBarcode(
            '#ff6666', 'Cancel', true, ScanMode.BARCODE)
        // setState(() {
        //   code=getcode;
        // });
        .then((String kode) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Webviewpage(kode)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sensus Aset Sleman')),
      body: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 350),
        child: Column (
        children: <Widget>[
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue, // foreground
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                textStyle:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            onPressed: () {
              scanbarcode();
            },
            child: const Text('Scan Barcode'),
          ),
          // Text(code)
        ],
      ))),
    );
  }
}
