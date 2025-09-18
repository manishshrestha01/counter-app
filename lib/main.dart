import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("rerun");
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  color: Colors.amber,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://picsum.photos/200/300"),
                  ),
                ),
              ),
              //Image
              // Image.network(
              //   "https://picsum.photos/200/300",
              //   width: 200,
              //   height: 200,
              // ),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) {
                        return CounterScreen();
                      },
                    ),
                  );
                },
                child: Text("Go to next screen"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  double data = 0.0;

  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                inc();
                print(data);
              },
              child: Text("+"),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    mul();
                  },
                  child: Text("*"),
                ),
                Text(data.toString()),
                ElevatedButton(
                  onPressed: () {
                    div();
                  },
                  child: Text("/"),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                dec();
                print(data);
              },
              child: Text("-"),
            ),
          ],
        ),
      ),
    );
  }

  void inc() {
    setState(() {
      data = data + 1;
    });
  }

  void dec() {
    setState(() {
      data = data - 1;
    });
  }

  void mul() {
    setState(() {
      data = data * 2;
    });
  }

  void div() {
    setState(() {
      data = data / 2;
    });
  }
}
