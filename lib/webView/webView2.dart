import 'package:flutter/material.dart';

class WebView2 extends StatelessWidget {
  const WebView2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Online Shoping',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body:
       Container(
         height: 20,
         width: 100,
         child:  GridView.builder(
           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
           ),
           itemBuilder: (context, index) {
             Container(
               height: 50,
               width: 100,
               decoration: const BoxDecoration(color: Colors.black),
             );
             return null;
           },
         ),
       )
      ),
    );
  }
}
