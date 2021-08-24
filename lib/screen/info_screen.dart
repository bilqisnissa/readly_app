import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Info',
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black, fontFamily: 'Cappung'),
          ),
    ),
      body: Container(
        margin: EdgeInsets.only(top: 180),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                children: [
                  Image.network(
                      'https://i.pinimg.com/564x/24/24/91/242491732b2bf298261c700e1d33b0e2.jpg',
                    width: 150, height: 150,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Bilqis Muflihunnisa',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text('SMK 11 RPL',)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
