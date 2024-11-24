import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanQrScreen extends StatefulWidget {
  const ScanQrScreen({super.key});

  @override
  State<ScanQrScreen> createState() => _ScanQrScreenState();
}

class _ScanQrScreenState extends State<ScanQrScreen> {
  var qrStr='lets scan it';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scan QR',),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(qrStr,
              style: TextStyle(
                fontSize: 30,
              ),
              ),
              MaterialButton(
                  onPressed: (){
                    scanQr();
                  },
                child: Text('Scan Now',
                style: TextStyle(
                  color: Colors.white,
                ),),
                color: Colors.deepPurple,
              )
            ],
          ),
        ),
      ),
    );
  }
  Future<void> scanQr() async{
    try{
      FlutterBarcodeScanner.scanBarcode('2A99CF', 'cancel', true, ScanMode.QR).then((value){
        setState(() {
          qrStr=value;
        });
      });

    } catch(e){
      print(e);
      setState(() {
        qrStr = 'unable to read this';
      });
    }
  }
}
