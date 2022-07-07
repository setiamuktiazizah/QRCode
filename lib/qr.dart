import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:qr_flutter/qr_flutter.dart';
import 'main.dart';

class Qrcode extends StatelessWidget {
  final String ling;
  Qrcode({this.ling});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  QrImage(
                    data: ling,
                    version: 8,
                    size: 300,
                    padding: EdgeInsets.all(10),
                    errorCorrectionLevel: QrErrorCorrectLevel.M,
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.black,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return Home();
                          }));
                        },
                        child: Text("Kembali")),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: FloatingActionButton(
                          onPressed: () {},
                          child: Icon(Icons.add),
                          backgroundColor: Color(0xFF1ced54),
                          hoverColor: Colors.green,
                          foregroundColor: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
