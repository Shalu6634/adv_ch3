import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Internet Connected',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.white,
        ),
        body: StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            if(snapshot.data!.contains(ConnectivityResult.mobile))
              {
                return Center(
                  child: Container(
                    height:50 ,
                    width: 270,
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.green,
                          borderRadius: BorderRadius.circular(15)
                    ),
                    child: const Center(child:  Text('Mobile Connected to Internet',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
                  ),
                );
              }
            else
            if (snapshot.data!.contains(ConnectivityResult.wifi)) {
              return Center(
              child: Container(
              height:50 ,
                width: 270,
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: const Center(child:  Text('Mobile Connected to Wi-Fi',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),)),
              ),
                          );
            } else {
              return Center(
                  child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Image.asset('assets/internet.jpg'),
                  const SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Text('Whoops! ',
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text('Not Internet Connection found',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),),
                  ),
                  const Center(
                    child: Text('Check your  Connection or try again',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 16),),
                  ),
                ],
              ));
            }
          },
        ));
  }
}
