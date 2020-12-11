import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQR extends StatefulWidget {
  @override
  _GenerateQRState createState() => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR> {

  String qrData="https://github.com/ChinmayMunje";
  final qrdataFeed = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Generate QR Code")),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              QrImage(data: qrData),
              SizedBox(height: 20),
              Text("Generate QR Code",style: TextStyle(fontSize: 20),),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your link here..."
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FlatButton(
                    onPressed: () async {
                      if (qrdataFeed.text.isEmpty) {        //a little validation for the textfield
                        setState(() {
                          qrData = "";
                        });
                      } else {
                        setState(() {
                          qrData = qrdataFeed.text;
                        });
                      }
                    },
                    child: Text("Generate QR Code",style: TextStyle(color: Colors.indigo[900],),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.indigo[900]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
