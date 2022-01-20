import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.black87,
                  border: Border.all(
                    color: Colors.black87,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(
                onPressed: () {
                  Get.snackbar(
                    "this tittel", 'this is the message',
                    snackPosition: SnackPosition.BOTTOM,
                    //   titleText: Text("new Title"),
                    //   messageText: Text("this is new message by him")
                    //   colorText: Colors.red,
                    // backgroundColor: Colors.teal,
                    // borderRadius: 30,
                    // margin: EdgeInsets.all(10),
                    // maxWidth: 100,
                    // animationDuration: Duration(milliseconds: 1000),
                    // backgroundGradient: LinearGradient(
                    //   colors: [Colors.red, Colors.black],
                    // ),
                    // borderColor: Colors.red,
                    // borderWidth: 4
                    // boxShadows: [
                    //   BoxShadow(
                    //     color: Colors.black,
                    //     offset: Offset(30,50),
                    //     spreadRadius: 5,
                    //     blurRadius: 4
                    //   )
                    // ],
                    // isDismissible: true,
                    // dismissDirection: DismissDirection.horizontal,
                    // forwardAnimationCurve: Curves.bounceInOut,
                    // duration: Duration(milliseconds: 8000),
                    icon: Icon(Icons.send, color: Colors.white),
                    shouldIconPulse: false,
                    leftBarIndicatorColor: Colors.red,
                    onTap: (val) {
                      print('SnackBar clicked');
                    },
                    overlayBlur: 4,
                    overlayColor: Colors.grey,
                    // padding: EdgeInsets.all(5),
                    progressIndicatorBackgroundColor: Colors.deepOrange,
                    reverseAnimationCurve: Curves.bounceInOut,
                    progressIndicatorValueColor:
                        AlwaysStoppedAnimation<Color>(Colors.white),
                    showProgressIndicator: true,
                    mainButton: TextButton(
                      onPressed: () {},
                      child: Text('Retry'),
                      style: TextButton.styleFrom(backgroundColor: Colors.red),
                    ),
                    // userInputForm: Form(
                    //   child: Row(
                    //     children: const [
                    //       Expanded(
                    //         child: TextField(),
                    //       )
                    //     ],
                    //   ),
                    // ),
                  );
                },
                child: const Text(
                  'Show Snackbar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
