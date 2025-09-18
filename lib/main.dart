import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("rerun");
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //Image
            Image.network("https://picsum.photos/200/300",
            width: 200,
            height: 200,
            ),
            //Text
            Text(
              "Counter App",
              style: TextStyle(fontSize: 30, color: Colors.deepPurpleAccent),
            ),
            //Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amberAccent,
              ),
              onPressed: () {
                print("Thichyo");
              },
              child: Text("Go to next screen"),
            ),
          ],
        ),
      ),
    );
  }
}
