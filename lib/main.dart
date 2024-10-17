import 'package:adv_ch3/webView/in_appweb_view.dart';
import 'package:adv_ch3/webView/webView2.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
     routes : {
        '/web':(context)=>WebViewScreen(),
        '/':(context)=>WebView2(),
     }

    );
  }
}

