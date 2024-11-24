import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class CreateQrScreen extends StatefulWidget {

  @override
  State<CreateQrScreen> createState() => _CreateQrScreenState();
}

class _CreateQrScreenState extends State<CreateQrScreen> {
  var qrStr='Add Data';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Your QR',),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BarcodeWidget(
                data: qrStr,
                barcode: Barcode.qrCode(),
                color: Colors.black,
                height: 250,
                width: 250,
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width*0.8,
                child: TextField(
                  onChanged: (val){
                    setState(() {
                      qrStr=val;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Enter your data',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                        width: 4
                      ),
                      borderRadius: BorderRadius.circular(7.0),
                    )
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
