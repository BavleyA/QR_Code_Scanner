import 'package:flutter/material.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'QR Scanner',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 140,
              child: MaterialButton(onPressed: (){
                print('create buttom pressed');
              },
                  child: Text(
                      'Create QR Code',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                color: Colors.deepPurple,
              ),
            ),
            Container(
              width: 140,
              child: MaterialButton(onPressed: (){
                print('Scan buttom presesed');
              },
                child: Text('Scan QR Code',
                style: TextStyle(
                  color: Colors.white,
                ),),
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
