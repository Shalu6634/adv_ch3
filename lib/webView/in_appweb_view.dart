import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

TextEditingController txtSearch = TextEditingController();
String search = '';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key});

  @override
  State<WebViewScreen> createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: SearchBar(
              controller: txtSearch,
              textInputAction: TextInputAction.search,
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () {
                      String data = txtSearch.text;
                      setState(() {
                        search = data;
                      });
                      print(search);
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => WebViewScreen(),
                      ));
                    },
                    child: const Icon(
                      Icons.search,
                      size: 25,
                    )),
              ),
            )),
      ),
      body: Center(
        child: InAppWebView(
          initialUrlRequest: URLRequest(
              url: WebUri('https://www.google.com/search?q=${search}')),
        ),
      ),
    );
  }
}
