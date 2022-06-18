import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'package:gsheets/gsheets.dart';

const _credentials = r'''
      {
  "type": "service_account",
  "project_id": "ace-slice-243602",
  "private_key_id": "3e04248f8d455e583af76996add1c4781acfe513",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCS2cFvUdp4FeyA\n2EtWAnSaD/4mbM6hJu10HupotaI5lpEg6V8oleTXZFYtiZb+ZdTTrcGBOF2XlvS/\n8WGrmAGAfwKZBSD9WMfVBAHu+tPT/mqBgyU1tfyTrjtX+miD1qUEGzbsK/WjxRBZ\nX6lwhsJGD5HyYUC4f/FdKVWNNFlwdEaa3dYn/+h1xUclh+9CuIISd0PeAcV7duCv\nKD2A/DSzMWVHvtAgAE9vqsHgtOYjFxJIRiUtaJ6BZZhVzW507r65eBJhRgwESC8G\nPGx+tyFMeR1AlnV4i37UP9t7/YDjmuHhAH+yH4pQiEUwFIlk9AJRl8ORidarOTjb\nHeoFtd+dAgMBAAECggEAGhVMatHenJLEUbRZWTsRa+XoTfnoj64i4gu1tgiA+nqY\nZ4CcEtDg9zMOrYLxS1lZ/okvxBx3XzwEV+1vXDOhHKoyk2xaSjWRNPBDyadKpa5c\nS4m4O7yJ0s9RIhTLqJMg90RAMp2yQTb46u73YRHGgvwz/5mvjbXH8LStSeng8vyn\nIDY3EqHPHBI287g5cgN1/rM0pasBY3GksBn0EtFlgEIIclqD5x7VvDZesHavKsWk\nxsjibPM8LCfzsrnkmcSo1BesC/+UyUJ4Q1msUCSznefGUbqr4YAozAhgLAAjQqru\nFvznivnOKIrT1FKbwlQsxxrsWGtZ4LN2m2DKmJm27wKBgQDPMtoweumbnX59/ZaP\nREMBqMZZyPZggrqn2quhJwNS3QKN2xm3MyegsUflFG6/hh1LoXPQRJauM+Nep9gn\nTrRQ6KuRQe3Zg5y9hfC8dbfzPBQgjU3G5yDOakWfc3ZgUQ1jAQgUN6bXev4m1DR3\noO0Y/RS/hXfbFItGV/X2Sfh+9wKBgQC1cDAWTSu56u4DiST522fPsO4qfTUGPc0N\n2hd3ALTi5l5UQSf9O+oBLiuN55dSM+ET48fIJCEkDYI6gBSWbXdYXiGwI1KBi8f3\ne0LG903DZkxfd5YaW+MLuKaVLmyv2EZVkHrSYejYQdcghZW2R5XvbUJypjhaQ4fR\nLPiPO0EtCwKBgQCQ+4JVXgxMyX2TZ3iMszU32gNBHC/aBF/byFVEJGpc9y0sWd26\npV7bQHGQSCXeelfRbh3946CUMNauiz/i8V2XJ9e1gq6N/1wT+b8kADNBTg6/YGDG\nB0Cbbx1cn4x7hPubBUPD8dUa/oMMZHx6IO8HB0AXa6scb1mtVStUtRnerQKBgF4K\nN+JXPUKvsY3Dl5apUbUkT01WeBU0EwQK9f6ILzkrjdi9rKxkUXUrKQfz8Up5+T8F\n4Jaro0G8frMzj3goZKM4pt1UcX8TpCFxkbruky+j5hHVOcePuK5qlmzcExlRT6Mp\nr387oCP2fDovAtnnYJ8oUjh6Ttr6BXs1g985Jx7hAoGACmildVRKMzvBJtY4jZuq\nAkZ3Qd5R2trIdaNBIc6vOar3HC02fYHaSX4pxYa+WG7dU8GO+Xw9xQjVexqn69ts\nXm6JF4D7/TRHh7Hovo3FLXTE/3RiKh1F/BsW8xnu+VqdzND/dEjbxVFTXD6oT8Gx\nw4QD0vRpbo8srEFRK2gJQKY=\n-----END PRIVATE KEY-----\n",
  "client_email": "flutter-gsheets@ace-slice-243602.iam.gserviceaccount.com",
  "client_id": "109640099567314534823",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/flutter-gsheets%40ace-slice-243602.iam.gserviceaccount.com"
}

''';

const _speadsheetId = '1v3SuQjLgnjr7ApLnYFTF--HL7MXX6STTlztsQ79TYOM';

void main() async {
  final gsheets = GSheets(_credentials);

  final ss = gsheets.spreadsheet(_speadsheetId);

  var sheet = ss.worksheetByTitle('Worksheet1');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
    );
  }
}
