import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';


TextEditingController txtSearch = TextEditingController();
RxString search = ''.obs;

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({super.key});

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
                      search = data.obs;
                      print(search);
                      Get.to(const WebViewScreen());
                    },
                    child: const Icon(
                      Icons.search,
                      size: 25,
                    )),
              ),
            )),
      ),
      body: 
      Center(
        child: 
       Obx(() =>  InAppWebView(
         initialUrlRequest: URLRequest(
             url: WebUri('https://www.google.com/search?q=${search}')),
       ),)
      ),
    );
  }
}
