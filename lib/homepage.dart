import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:attendance/gsheet.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void entervalue() {
    UserSheetsAPI.insert("name", "amount", true);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Attendance",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: Stack(alignment: Alignment.center, children: [
            // Expanded(
            //   flex: 5,
            //   child: QRView(
            //     key: qrKey,
            //     onQRViewCreated: _onQRViewCreated,
            //     overlay: QrScannerOverlayShape(
            //         borderWidth: 10,
            //         borderLength: 20,
            //         borderRadius: 10,
            //         cutOutSize: MediaQuery.of(context).size.width * 0.8),
            //   ),
            // ),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    entervalue();
                  },
                  child: Text("jak")),
            )
          ])),
    );
  }
}
