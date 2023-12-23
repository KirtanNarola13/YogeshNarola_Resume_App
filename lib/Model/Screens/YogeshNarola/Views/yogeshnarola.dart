import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class YogeshNarola extends StatefulWidget {
  const YogeshNarola({super.key});

  @override
  State<YogeshNarola> createState() => _YogeshNarolaState();
}

class _YogeshNarolaState extends State<YogeshNarola> {
  InAppWebViewController? inAppWebViewController;

  String? group;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, AsyncSnapshot<ConnectivityResult> snapshot) =>
            (snapshot.data == ConnectivityResult.wifi ||
                    snapshot.data == ConnectivityResult.mobile)
                ? Center(
                    child: InAppWebView(
                      initialUrlRequest: URLRequest(
                        url: Uri.parse("https://yogeshnarola.vercel.app/"),
                      ),
                      onLoadStart: (controller, uri) {
                        setState(() {
                          inAppWebViewController = controller;
                        });
                      },
                      onLoadStop: (controller, uri) {},
                    ),
                  )
                : Center(
                    child: Container(
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 250,
                            width: 250,
                            child: Image(
                              image: AssetImage("lib/Assets/offline.png"),
                            ),
                          ),
                          Text(
                            "You are offline",
                            style: TextStyle(
                              fontSize: 26,
                            ),
                          ),
                          Text(
                            "check your internet connection",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
      ),
    );
  }
}
