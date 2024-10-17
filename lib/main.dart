import 'package:adv_ch3/webView/in_appweb_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/', page: () => WebViewScreen(),)
      ],
    );
  }
}

