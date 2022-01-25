import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:ihatedinner/Screens/Home/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: "AIzaSyCtByUv-H6UyOnzrDCMAanjomrx5FAovss",
        projectId: "i-hate-dinner",
        messagingSenderId: "751555493948",
        appId: "1:751555493948:web:0ce640b8e17896d4f4c339",
      )
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hey, I Hate Dinner',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: _initialization,
        builder: (context,snapshot){
          if(snapshot.hasError){
           return Center(
             child: Text("Snapshot Error Initializing the app\n"+snapshot.error.toString()),
           );
          }

          if(snapshot.connectionState == ConnectionState.done){
            return MyHomePage();
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}

