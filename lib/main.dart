import 'dart:io';

import 'package:attendance/gsheet.dart';
import 'package:attendance/user.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:attendance/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  UserSheetsAPI.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color.fromARGB(255, 0, 195, 255),
        ),
      ),
      home: Homepage(),
    );
  }
}
