import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';

class ScanQR extends StatefulWidget {
  @override
  _ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR> {

  String qrCodeResult = "Not Yet Scanned";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scan QR Code"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Text(
        "Result",
        style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      Text(
        qrCodeResult,
        style: TextStyle(
          fontSize: 20.0,
        ),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: 20.0,
      ),

      FlatButton(
        padding: EdgeInsets.all(15),
        onPressed: () async {
          String codeSanner = await BarcodeScanner.scan();    //barcode scnner
          setState(() {
            qrCodeResult = codeSanner;
          });
        },
        child: Text("Open Scanner",style: TextStyle(color: Colors.indigo[900]),),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.indigo[900]),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),

         ],
        ),
      ),
    );
  }
}
