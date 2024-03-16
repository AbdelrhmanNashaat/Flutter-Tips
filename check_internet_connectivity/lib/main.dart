import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ConnectivityApp());
}

class ConnectivityApp extends StatefulWidget {
  const ConnectivityApp({super.key});

  @override
  State<ConnectivityApp> createState() => _ConnectivityAppState();
}

class _ConnectivityAppState extends State<ConnectivityApp> {
  @override
  initState() {
    super.initState();
    checkInternet();
  }

  void checkInternet() async {
    var con = await Connectivity().checkConnectivity();
    print(con.name);
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // this way works on app is on only
    return StreamBuilder<ConnectivityResult>(
      // Connectivity().onConnectivityChanged : listen when Connectivity changed
      stream: Connectivity().onConnectivityChanged,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return Scaffold(
          // check if there is internet connection or not
          body: snapshot.data == ConnectivityResult.none
              ? const Center(
                  child: Text(
                    'No Internet Connection',
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.red,
                        fontWeight: FontWeight.w500),
                  ),
                )
              : const Center(
                  child: Text(
                    'Internet Is Good',
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.purple,
                        fontWeight: FontWeight.w500),
                  ),
                ),
        );
      },
    );
  }
}
