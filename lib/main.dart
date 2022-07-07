import 'package:flutter/material.dart';
import 'qr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController kontrol1 = TextEditingController();
  String x = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.dashboard_customize),
                  hintText: "Masukkan Link",
                  labelText: "Link Generate"),
              onChanged: (apa) {
                setState(() {
                  x = apa;
                });
              },
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return Qrcode(
                      ling: x,
                    );
                  }));
                },
                child: Text("Kirim Link"))
          ],
        ),
      ),
    );
  }
}
