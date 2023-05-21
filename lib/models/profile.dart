import 'package:flutter/material.dart';
import 'package:projectfix/views/HomePage.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('My Profile'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ClipOval(
                child: Image.asset("assets/fotoku.jpeg",
                  fit: BoxFit.cover,
                  width: 200,
                  height: 200,
                ),
              ),

            ),
            SizedBox(height: 30.0 ),
            Text(
              '\nErgyna Islamiah', style: TextStyle(
                fontSize: 26,
                fontWeight : FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            Text(
              '123200020', style: TextStyle(
                fontSize: 20),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 100,
              child: ButtonTheme(
                child: ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: [
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
